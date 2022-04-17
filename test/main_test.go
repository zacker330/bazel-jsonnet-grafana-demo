package test

import (
	"context"
	"fmt"
	"testing"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
    "github.com/testcontainers/testcontainers-go"
	"github.com/testcontainers/testcontainers-go/wait"
    "net/http"
)
type grafanaContainer struct {
	testcontainers.Container
	URI string
}




func setupGrafana(ctx context.Context) (*grafanaContainer, error) {
	req := testcontainers.ContainerRequest{
        Image:        "grafana/grafana:8.2.0",
        ExposedPorts: []string{"3000/tcp"},
        WaitingFor:   wait.ForHTTP("/").WithPort("3000/tcp"),
        Env: map[string]string{
            "GF_SECURITY_ADMIN_PASSWORD": "admin",
            "GF_SECURITY_ADMIN_USER": "admin",
            "GF_AUTH_DISABLE_LOGIN_FORM": "false",
           },
	}
	container, err := testcontainers.GenericContainer(ctx, testcontainers.GenericContainerRequest{
		ContainerRequest: req,
		Started:          true,
	})
	if err != nil {
		return nil, err
	}

	ip, err := container.Host(ctx)
	if err != nil {
		return nil, err
	}

	mappedPort, err := container.MappedPort(ctx, "3000")
	if err != nil {
		return nil, err
	}

	uri := fmt.Sprintf("http://%s:%s", ip, mappedPort.Port())

	return &grafanaContainer{Container: container, URI: uri}, nil
}

func TestTerraformHelloWorldExample(t *testing.T) {

    if testing.Short() {
        t.Skip("skipping integration test")
    }

    ctx := context.Background()

    grafanaC, err := setupGrafana(ctx)
    if err != nil {
        t.Fatal(err)
    }
    


    resp, err := http.Get(grafanaC.URI)
    if resp.StatusCode != http.StatusOK {
        t.Fatalf("Expected status code %d. Got %d.", http.StatusOK, resp.StatusCode)
    }

	// website::tag::2:: Construct the terraform options with default retryable errors to handle the most common
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		// website::tag::1:: Set the path to the Terraform code that will be tested.
		TerraformDir: "../bazel-bin/",
        Vars:  map[string]interface{}{
            "grafana_url": grafanaC.URI, 
        },
	})

	// website::tag::5:: Clean up resources with "terraform destroy" at the end of the test.
	defer terraform.Destroy(t, terraformOptions)

	// website::tag::3:: Run "terraform init" and "terraform apply". Fail the test if there are any errors.
	terraform.InitAndApply(t, terraformOptions)

	// website::tag::4:: Run `terraform output` to get the values of output variables and check they have the expected values.
	output := terraform.Output(t, terraformOptions, "hello_world")
	assert.Equal(t, "Hello, World!", output)

    // Clean up the container after the test is complete
    defer grafanaC.Terminate(ctx)
}

