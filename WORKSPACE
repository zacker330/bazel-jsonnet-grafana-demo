load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

# go build start

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "f2dcd210c7095febe54b804bb1cd3a58fe8435a909db2ec04e31542631cf715c",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.31.0/rules_go-v0.31.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.31.0/rules_go-v0.31.0.zip",
    ],
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "de69a09dc70417580aabf20a28619bb3ef60d038470c7cf8442fafcf627c21cb",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

go_repository(
    name = "com_github_docker_docker",
    importpath = "github.com/docker/docker",
    sum = "h1:+T9/PRYWNDo5SZl5qS1r9Mo/0Q8AwxKKPtu9S1yxM0w=",
    version = "v20.10.14+incompatible",
)

go_repository(
    name = "com_github_opencontainers_image_spec",
    importpath = "github.com/opencontainers/image-spec",
    sum = "h1:9yCKha/T5XdGtO0q9Q9a6T5NUCsTn/DrBg0D7ufOcFM=",
    version = "v1.0.2",
)

go_repository(
    name = "com_github_docker_go_connections",
    importpath = "github.com/docker/go-connections",
    sum = "h1:El9xVISelRB7BuFusrZozjnkIM5YnzCViNKohAFqRJQ=",
    version = "v0.4.0",
)

go_repository(
    name = "com_github_hashicorp_go_multierror",
    importpath = "github.com/hashicorp/go-multierror",
    sum = "h1:H5DkEtf6CXdFp0N0Em5UCwQpXMWke8IA0+lD48awMYo=",
    version = "v1.1.1",
)

go_repository(
    name = "com_github_moby_term",
    importpath = "github.com/moby/term",
    sum = "h1:dcztxKSvZ4Id8iPpHERQBbIJfabdt4wUm5qy3wOL2Zc=",
    version = "v0.0.0-20210619224110-3f7ff695adc6",
)

go_repository(
    name = "com_github_cenkalti_backoff",
    importpath = "github.com/cenkalti/backoff",
    sum = "h1:tNowT99t7UNflLxfYYSlKYsBpXdEet03Pg2g16Swow4=",
    version = "v2.2.1+incompatible",
)

go_repository(
    name = "com_github_cenkalti_backoff_v4",
    importpath = "github.com/cenkalti/backoff/v4",
    sum = "h1:cFAlzYUlVYDysBEH2T5hyJZMh3+5+WCBvSnK6Q8UtC4=",
    version = "v4.1.3",
)

go_repository(
    name = "in_gopkg_yaml_v3",
    importpath = "gopkg.in/yaml.v3",
    sum = "h1:h8qDotaEPuJATrMmW04NCwg7v22aHH28wwpauUhK9Oo=",
    version = "v3.0.0-20210107192922-496545a6307b",
)

go_repository(
    name = "com_github_zclconf_go_cty",
    importpath = "github.com/zclconf/go-cty",
    sum = "h1:mp9ZXQeIcN8kAwuqorjH+Q+njbJKjLrvB2yIh4q7U+0=",
    version = "v1.10.0",
)

go_repository(
    name = "com_github_magiconair_properties",
    importpath = "github.com/magiconair/properties",
    sum = "h1:5ibWZ6iY0NctNGWo87LalDlEZ6R41TqbbDamhfG/Qzo=",
    version = "v1.8.6",
)

go_repository(
    name = "com_github_hashicorp_hcl_v2",
    importpath = "github.com/hashicorp/hcl/v2",
    sum = "h1:yTyWcXcm9XB0TEkyU/JCRU6rYy4K+mgLtzn2wlrJbcc=",
    version = "v2.11.1",
)

go_repository(
    name = "com_github_tmccombs_hcl2json",
    importpath = "github.com/tmccombs/hcl2json",
    sum = "h1:pYzRaHVTJu6TfFumACORClRtsK431eeuv7WjNNLjT90=",
    version = "v0.3.4",
)

go_repository(
    name = "com_github_jinzhu_copier",
    importpath = "github.com/jinzhu/copier",
    sum = "h1:GlvfUwHk62RokgqVNvYsku0TATCF7bAHVwEXoBh3iJg=",
    version = "v0.3.5",
)

go_repository(
    name = "com_github_hashicorp_terraform_json",
    importpath = "github.com/hashicorp/terraform-json",
    sum = "h1:Li9L+lKD1FO5RVFRM1mMMIBDoUHslOniyEi5CM+FWGY=",
    version = "v0.13.0",
)

go_repository(
    name = "com_github_google_uuid",
    importpath = "github.com/google/uuid",
    sum = "h1:t6JiXgmwXMjEs8VusXIJk2BXHsn+wx8BZdTaoZ5fu7I=",
    version = "v1.3.0",
)

go_repository(
    name = "com_github_containerd_containerd",
    importpath = "github.com/containerd/containerd",
    sum = "h1:pcaPUGbYW8kBw6OgIZwIVIeEhdWVrBzsoCfVJ5BjrLU=",
    version = "v1.6.2",
)

go_repository(
    name = "com_github_mattn_go_zglob",
    importpath = "github.com/mattn/go-zglob",
    sum = "h1:6Ry4EYsScDyt5di4OI6xw1bYhOqfE5S33Z1OPy+d+To=",
    version = "v0.0.3",
)

go_repository(
    name = "com_github_hashicorp_go_getter",
    importpath = "github.com/hashicorp/go-getter",
    sum = "h1:wioTuNmaBU3IE9vdFtFMcmZWj0QzLc6DYaP6sNe5onY=",
    version = "v1.5.11",
)

go_repository(
    name = "com_github_hashicorp_errwrap",
    importpath = "github.com/hashicorp/errwrap",
    sum = "h1:OxrOeh75EUXMY8TBjag2fzXGZ40LB6IKw45YeGUDY2I=",
    version = "v1.1.0",
)

go_repository(
    name = "com_github_mitchellh_go_wordwrap",
    importpath = "github.com/mitchellh/go-wordwrap",
    sum = "h1:TLuKupo69TCn6TQSyGxwI1EblZZEsQ0vMlAFQflz0v0=",
    version = "v1.0.1",
)

go_repository(
    name = "com_github_hashicorp_go_version",
    importpath = "github.com/hashicorp/go-version",
    sum = "h1:aAQzgqIrRKRa7w75CKpbBxYsmUoPjzVm1W59ca1L0J4=",
    version = "v1.4.0",
)

go_repository(
    name = "com_github_agext_levenshtein",
    importpath = "github.com/agext/levenshtein",
    sum = "h1:YB2fHEn0UJagG8T1rrWknE3ZQzWM06O8AMAatNn7lmo=",
    version = "v1.2.3",
)

go_repository(
    name = "com_github_apparentlymart_go_textseg",
    importpath = "github.com/apparentlymart/go-textseg",
    sum = "h1:rRmlIsPEEhUTIKQb7T++Nz/A5Q6C9IuX2wFoYVvnCs0=",
    version = "v1.0.0",
)

go_repository(
    name = "com_github_apparentlymart_go_textseg_v13",
    importpath = "github.com/apparentlymart/go-textseg/v13",
    sum = "h1:Y+KvPE1NYz0xl601PVImeQfFyEy6iT90AvPUL1NNfNw=",
    version = "v13.0.0",
)

go_repository(
    name = "com_github_aws_aws_sdk_go",
    importpath = "github.com/aws/aws-sdk-go",
    sum = "h1:HaazVplP8/t6SOfybQlNUmjAxLWDKdLdX8BSEHFlJdY=",
    version = "v1.43.41",
)

go_repository(
    name = "com_github_bgentry_go_netrc",
    importpath = "github.com/bgentry/go-netrc",
    sum = "h1:xDfNPAt8lFiC1UJrqV3uuy861HCTo708pDMbjHHdCas=",
    version = "v0.0.0-20140422174119-9fd32a8b3d3d",
)

go_repository(
    name = "com_github_klauspost_compress",
    importpath = "github.com/klauspost/compress",
    sum = "h1:y9FcTHGyrebwfP0ZZqFiaxTaiDnUrGkJkI+f583BL1A=",
    version = "v1.15.1",
)

go_repository(
    name = "com_github_ulikunitz_xz",
    importpath = "github.com/ulikunitz/xz",
    sum = "h1:t92gobL9l3HE202wg3rlk19F6X+JOxl9BBrCCMYEYd8=",
    version = "v0.5.10",
)

go_repository(
    name = "org_golang_google_api",
    importpath = "google.golang.org/api",
    sum = "h1:ExR2D+5TYIrMphWgs5JCgwRhEDlPDXXrLwHHMgPHTXE=",
    version = "v0.74.0",
)

go_repository(
    name = "com_github_mitchellh_go_homedir",
    importpath = "github.com/mitchellh/go-homedir",
    sum = "h1:lukF9ziXFxDFPkA1vsr5zpc1XuPDn/wFntq5mG+4E0Y=",
    version = "v1.1.0",
)

go_repository(
    name = "com_github_mitchellh_go_testing_interface",
    importpath = "github.com/mitchellh/go-testing-interface",
    sum = "h1:jrgshOhYAUVNMAJiKbEu7EqAwgJJ2JqpQmpLJOu07cU=",
    version = "v1.14.1",
)

go_repository(
    name = "com_github_hashicorp_go_cleanhttp",
    importpath = "github.com/hashicorp/go-cleanhttp",
    sum = "h1:035FKYIWjmULyFRBKPs8TBQoi0x6d9G4xc9neXJWAZQ=",
    version = "v0.5.2",
)

go_repository(
    name = "com_github_hashicorp_go_safetemp",
    importpath = "github.com/hashicorp/go-safetemp",
    sum = "h1:2HR189eFNrjHQyENnQMMpCiBAsRxzbTMIgBhEyExpmo=",
    version = "v1.0.0",
)

go_repository(
    name = "org_golang_google_protobuf",
    importpath = "google.golang.org/protobuf",
    sum = "h1:w43yiav+6bVFTBQFZX0r7ipe9JQ1QsbMgHwbBziscLw=",
    version = "v1.28.0",
)

go_repository(
    name = "org_golang_google_grpc",
    importpath = "google.golang.org/grpc",
    sum = "h1:NEpgUqV3Z+ZjkqMsxMg11IaDrXY4RY6CQukSGK0uI1M=",
    version = "v1.45.0",
)

go_repository(
    name = "org_golang_google_genproto",
    importpath = "google.golang.org/genproto",
    sum = "h1:myaecH64R0bIEDjNORIel4iXubqzaHU1K2z8ajBwWcM=",
    version = "v0.0.0-20220414192740-2d67ff6cf2b4",
)

go_repository(
    name = "org_golang_google_appengine",
    importpath = "google.golang.org/appengine",
    sum = "h1:FZR1q0exgwxzPzp/aF+VccGrSfxfPpkBqjIIEq3ru6c=",
    version = "v1.6.7",
)

go_repository(
    name = "org_golang_x_xerrors",
    importpath = "golang.org/x/xerrors",
    sum = "h1:GGU+dLjvlC3qDwqYgL6UgRmHXhOOgns0bZu2Ty5mm6U=",
    version = "v0.0.0-20220411194840-2f41105eb62f",
)

go_repository(
    name = "org_golang_x_tools",
    importpath = "golang.org/x/tools",
    sum = "h1:QjFRCZxdOhBJ/UNgnBZLbNV13DlbnK0quyivTnXJM20=",
    version = "v0.1.10",
)

go_repository(
    name = "org_golang_x_text",
    importpath = "golang.org/x/text",
    sum = "h1:olpwvP2KacW1ZWvsR7uQhoyTYvKAupfQrRGBFM352Gk=",
    version = "v0.3.7",
)

go_repository(
    name = "org_golang_x_sys",
    importpath = "golang.org/x/sys",
    sum = "h1:ntjMns5wyP/fN65tdBD4g8J5w8n015+iIIs9rtjXkY0=",
    version = "v0.0.0-20220412211240-33da011f77ad",
)

go_repository(
    name = "com_github_moby_sys_mount",
    importpath = "github.com/moby/sys/mount",
    sum = "h1:uq/CiGDZPvr+c85RYHtKIUORFbmavBUyWH3E1NEyjqI=",
    version = "v0.3.2",
)

go_repository(
    name = "com_github_moby_sys_mountinfo",
    importpath = "github.com/moby/sys/mountinfo",
    sum = "h1:+H/KnGEAGRpTrEAqNVQ2AM3SiwMgJUt/TXj+Z8cmCIc=",
    version = "v0.6.1",
)

go_repository(
    name = "com_github_morikuni_aec",
    importpath = "github.com/morikuni/aec",
    sum = "h1:nP9CBfwrvYnBRgY6qfDQkygYDmYwOilePFkwzv4dU8A=",
    version = "v1.0.0",
)

go_repository(
    name = "com_github_opencontainers_go_digest",
    importpath = "github.com/opencontainers/go-digest",
    sum = "h1:apOUWs51W5PlhuyGyz9FCeeBIOUDA/6nW8Oi/yOhh5U=",
    version = "v1.0.0",
)

go_repository(
    name = "com_github_pkg_errors",
    importpath = "github.com/pkg/errors",
    sum = "h1:FEBLx1zS214owpjy7qsBeixbURkuhQAwrK5UwLGTwt4=",
    version = "v0.9.1",
)

go_repository(
    name = "com_github_pmezard_go_difflib",
    importpath = "github.com/pmezard/go-difflib",
    sum = "h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=",
    version = "v1.0.0",
)

go_repository(
    name = "com_github_sirupsen_logrus",
    importpath = "github.com/sirupsen/logrus",
    sum = "h1:dJKuHgqk1NNQlqoA6BTlM1Wf9DOH3NBjQyu0h9+AZZE=",
    version = "v1.8.1",
)

go_repository(
    name = "com_github_docker_go_units",
    importpath = "github.com/docker/go-units",
    sum = "h1:3uh0PgVws3nIA0Q+MwDC8yjEPf9zjRfZZWXZYDct3Tw=",
    version = "v0.4.0",
)

go_repository(
    name = "com_github_docker_distribution",
    importpath = "github.com/docker/distribution",
    sum = "h1:Q50tZOPR6T/hjNsyc9g8/syEs6bk8XXApsHjKukMl68=",
    version = "v2.8.1+incompatible",
)

go_repository(
    name = "com_github_davecgh_go_spew",
    importpath = "github.com/davecgh/go-spew",
    sum = "h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c=",
    version = "v1.1.1",
)

go_repository(
    name = "com_github_golang_groupcache",
    importpath = "github.com/golang/groupcache",
    sum = "h1:oI5xCqsCo564l8iNU+DwB5epxmsaqB+rhGL0m5jtYqE=",
    version = "v0.0.0-20210331224755-41bb18bfe9da",
)

go_repository(
    name = "com_github_golang_snappy",
    importpath = "github.com/golang/snappy",
    sum = "h1:yAGX7huGHXlcLOEtBnF4w7FQwA26wojNCwOYAEhLjQM=",
    version = "v0.0.4",
)

go_repository(
    name = "com_google_cloud_go",
    importpath = "cloud.google.com/go",
    sum = "h1:t9Iw5QH5v4XtlEQaCtUY7x6sCABps8sW0acw7e2WQ6Y=",
    version = "v0.100.2",
)

go_repository(
    name = "com_google_cloud_go_storage",
    importpath = "cloud.google.com/go/storage",
    sum = "h1:NUV0NNp9nkBuW66BFRLuMgldN60C57ET3dhbwLIYio8=",
    version = "v1.22.0",
)

go_repository(
    name = "org_golang_x_oauth2",
    build_directives = [
        "gazelle:resolve go cloud.google.com/go/compute/metadata @com_google_cloud_go//compute/metadata",
    ],
    importpath = "golang.org/x/oauth2",
    sum = "h1:pkQiBZBvdos9qq4wBAHqlzuZHEXo07pqV06ef90u1WI=",
    version = "v0.0.0-20210514164344-f6687ab2804c",
)

go_repository(
    name = "com_github_azure_go_ansiterm",
    importpath = "github.com/Azure/go-ansiterm",
    sum = "h1:UQHMgLO+TxOElx5B5HZ4hJQsoJ/PvUvKRhJHDQXO8P8=",
    version = "v0.0.0-20210617225240-d185dfc1b5a1",
)

go_repository(
    name = "com_github_microsoft_go_winio",
    importpath = "github.com/Microsoft/go-winio",
    sum = "h1:a9IhgEQBCUEk6QCdml9CiJGhAws+YwffDHEMp1VMrpA=",
    version = "v0.5.2",
)

go_repository(
    name = "com_github_microsoft_hcsshim",
    importpath = "github.com/Microsoft/hcsshim",
    sum = "h1:wB06W5aYFfUB3IvootYAY2WnOmIdgPGfqSI6tufQNnY=",
    version = "v0.9.2",
)

go_repository(
    name = "com_github_jmespath_go_jmespath",
    importpath = "github.com/jmespath/go-jmespath",
    sum = "h1:BEgLn5cpjn8UN1mAw4NjwDrS35OdebyEtFe+9YPoQUg=",
    version = "v0.4.0",
)

go_repository(
    name = "com_github_jstemmer_go_junit_report",
    importpath = "github.com/jstemmer/go-junit-report",
    sum = "h1:8X1gzZpR+nVQLAht+L/foqOeX2l9DTZoaIPbEQHxsds=",
    version = "v1.0.0",
)

go_repository(
    name = "com_github_googleapis_gax_go_v2",
    importpath = "github.com/googleapis/gax-go/v2",
    sum = "h1:nRJtk3y8Fm770D42QV6T90ZnvFZyk7agSo3Q+Z9p3WI=",
    version = "v2.3.0",
)

go_repository(
    name = "com_github_googleapis_go_type_adapters",
    importpath = "github.com/googleapis/go-type-adapters",
    sum = "h1:9XdMn+d/G57qq1s8dNc5IesGCXHf6V2HZ2JwRxfA2tA=",
    version = "v1.0.0",
)

go_repository(
    name = "com_google_cloud_go_iam",
    importpath = "cloud.google.com/go/iam",
    sum = "h1:exkAomrVUuzx9kWFI1wm3KI0uoDeUFPB4kKGzx6x+Gc=",
    version = "v0.3.0",
)

go_repository(
    name = "com_google_cloud_go_compute",
    importpath = "cloud.google.com/go/compute",
    sum = "h1:XdQIN5mdPTSBVwSIVDuY5e8ZzVAccsHvD3qTEz4zIps=",
    version = "v1.6.0",
)

go_rules_dependencies()

go_register_toolchains(version = "1.18")

gazelle_dependencies()

go_repository(
    name = "com_github_gruntwork_io_terratest",
    importpath = "github.com/gruntwork-io/terratest",
    sum = "h1:kBYzD9gcQoruAoV9vmVLk8kjuZAUI5U72h9IAogL/iI=",
    version = "v0.40.6",
)

go_repository(
    name = "com_github_testcontainers_testcontainers_go",
    importpath = "github.com/testcontainers/testcontainers-go",
    sum = "h1:OUujSlEGsXVo/ykPVZk3KanBNGN0TYb/7oKIPVn15JA=",
    version = "v0.13.0",
)

go_repository(
    name = "com_github_stretchr_testify",
    importpath = "github.com/stretchr/testify",
    sum = "h1:5TQK59W5E3v0r2duFAb7P95B6hEeOyEnHRa8MjYSMTY=",
    version = "v1.7.1",
)

# go build end

# io_bazel_rules_jsonnet start
http_archive(
    name = "io_bazel_rules_jsonnet",
    sha256 = "d20270872ba8d4c108edecc9581e2bb7f320afab71f8caa2f6394b5202e8a2c3",
    strip_prefix = "rules_jsonnet-0.4.0",
    urls = ["https://github.com/bazelbuild/rules_jsonnet/archive/refs/tags/0.4.0.tar.gz"],
)

# load("@io_bazel_rules_jsonnet//jsonnet:jsonnet.bzl", "jsonnet_repositories")
# jsonnet_repositories()

http_archive(
    name = "jsonnet",
    sha256 = "076b52edf888c01097010ad4299e3b2e7a72b60a41abbc65af364af1ed3c8dbe",
    strip_prefix = "jsonnet-0.17.0",
    urls = [
        "https://github.com/google/jsonnet/archive/v0.17.0.tar.gz",
    ],
)

http_archive(
    name = "google_jsonnet_go",
    sha256 = "4fd04d0c9e38572ef388d28ea6b1ac151b8a9a5026ff94e3a68bdbc18c4db38a",
    strip_prefix = "go-jsonnet-0.17.0",
    urls = ["https://github.com/google/go-jsonnet/archive/refs/tags/v0.17.0.tar.gz"],
)

load("@google_jsonnet_go//bazel:repositories.bzl", "jsonnet_go_repositories")

jsonnet_go_repositories()

load("@google_jsonnet_go//bazel:deps.bzl", "jsonnet_go_dependencies")

jsonnet_go_dependencies()

new_git_repository(
    name = "grafonnet-lib",
    build_file = "//:grafonnet-lib.BUILD.bazel",
    commit = "6db00c292d3a1c71661fc875f90e0ec7caa538c2",
    remote = "https://github.com/grafana/grafonnet-lib.git",
)

# io_bazel_rules_jsonnet end

### docker
http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "85ffff62a4c22a74dbd98d05da6cf40f497344b3dbf1e1ab0a37ab2a1a6ca014",
    strip_prefix = "rules_docker-0.23.0",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.23.0/rules_docker-v0.23.0.tar.gz"],
)
