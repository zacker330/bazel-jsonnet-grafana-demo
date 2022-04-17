local dashboards = import './dashboards/dashboards.libsonnet';
local secrets = import 'secrets.libsonnet';

{
  // for helm chart
  'app.json': {
    rbac: {
      create: true,
      pspEnabled: true,
      pspUseAppArmor: true,
      namespaced: false,
      extraRoleRules: [

      ],
      extraClusterRoleRules: [

      ],
    },
    serviceAccount: {
      create: true,
      name: null,
      nameTest: null,
      autoMount: true,
    },
    replicas: 1,
    headlessService: false,
    autoscaling: {
      enabled: false,
    },
    podDisruptionBudget: {
    },
    deploymentStrategy: {
      type: 'RollingUpdate',
    },
    readinessProbe: {
      httpGet: {
        path: '/api/health',
        port: 3000,
      },
    },
    livenessProbe: {
      httpGet: {
        path: '/api/health',
        port: 3000,
      },
      initialDelaySeconds: 60,
      timeoutSeconds: 30,
      failureThreshold: 10,
    },
    image: {
      repository: 'grafana/grafana',
      tag: '8.4.6',
      sha: '',
      pullPolicy: 'IfNotPresent',
    },
    testFramework: {
      enabled: true,
      image: 'bats/bats',
      tag: 'v1.4.1',
      imagePullPolicy: 'IfNotPresent',
      securityContext: {
      },
    },
    securityContext: {
      runAsUser: 472,
      runAsGroup: 472,
      fsGroup: 472,
    },
    containerSecurityContext: {
    },
    extraConfigmapMounts: [

    ],
    extraEmptyDirMounts: [

    ],
    extraLabels: {
    },
    downloadDashboardsImage: {
      repository: 'curlimages/curl',
      tag: '7.73.0',
      sha: '',
      pullPolicy: 'IfNotPresent',
    },
    downloadDashboards: {
      env: {
      },
      envFromSecret: '',
      resources: {
      },
    },
    podPortName: 'grafana',
    service: {
      enabled: true,
      type: 'ClusterIP',
      port: 80,
      targetPort: 3000,
      annotations: {
      },
      labels: {
      },
      portName: 'service',
    },
    serviceMonitor: {
      enabled: false,
      path: '/metrics',
      labels: {
      },
      interval: '1m',
      scheme: 'http',
      tlsConfig: {
      },
      scrapeTimeout: '30s',
      relabelings: [

      ],
    },
    extraExposePorts: [

    ],
    hostAliases: [

    ],
    ingress: {
      enabled: false,
      annotations: {
      },
      labels: {
      },
      path: '/',
      pathType: 'Prefix',
      hosts: [
        'chart-example.local',
      ],
      extraPaths: [

      ],
      tls: [

      ],
    },
    resources: {
    },
    nodeSelector: {
    },
    tolerations: [

    ],
    affinity: {
    },
    extraInitContainers: [

    ],
    extraContainers: '',
    extraContainerVolumes: [

    ],
    persistence: {
      type: 'pvc',
      enabled: false,
      accessModes: [
        'ReadWriteOnce',
      ],
      size: '10Gi',
      finalizers: [
        'kubernetes.io/pvc-protection',
      ],
      inMemory: {
        enabled: false,
      },
    },
    initChownData: {
      enabled: true,
      image: {
        repository: 'busybox',
        tag: '1.31.1',
        sha: '',
        pullPolicy: 'IfNotPresent',
      },
      resources: {
      },
    },
    adminUser: 'admin',
    admin: {
      existingSecret: '',
      userKey: 'admin-user',
      passwordKey: 'admin-password',
    },
    env: {
    },
    envValueFrom: {
    },
    envFromSecret: '',
    envRenderSecret: {
    },
    envFromSecrets: [

    ],
    envFromConfigMaps: [

    ],
    enableServiceLinks: true,
    extraSecretMounts: [

    ],
    extraVolumeMounts: [

    ],
    plugins: [

    ],
    datasources: {
    },
    notifiers: {
    },
    dashboardProviders: {
    },
    dashboards: {
    },
    dashboardsConfigMaps: {
    },
    'grafana.ini': {
      paths: {
        data: '/var/lib/grafana/',
        logs: '/var/log/grafana',
        plugins: '/var/lib/grafana/plugins',
        provisioning: '/etc/grafana/provisioning',
      },
      analytics: {
        check_for_updates: true,
      },
      log: {
        mode: 'console',
      },
      grafana_net: {
        url: 'https://grafana.net',
      },
    },
    ldap: {
      enabled: false,
      existingSecret: '',
      config: '',
    },
    smtp: {
      existingSecret: '',
      userKey: 'user',
      passwordKey: 'password',
    },
    sidecar: {
      image: {
        repository: 'quay.io/kiwigrid/k8s-sidecar',
        tag: '1.15.6',
        sha: '',
      },
      imagePullPolicy: 'IfNotPresent',
      resources: {
      },
      securityContext: {
      },
      enableUniqueFilenames: false,
      dashboards: {
        enabled: false,
        SCProvider: true,
        label: 'grafana_dashboard',
        labelValue: null,
        folder: '/tmp/dashboards',
        defaultFolderName: null,
        searchNamespace: null,
        watchMethod: 'WATCH',
        resource: 'both',
        folderAnnotation: null,
        script: null,
        provider: {
          name: 'sidecarProvider',
          orgid: 1,
          folder: '',
          type: 'file',
          disableDelete: false,
          allowUiUpdates: false,
          foldersFromFilesStructure: false,
        },
        extraMounts: [

        ],
      },
      datasources: {
        enabled: false,
        label: 'grafana_datasource',
        labelValue: null,
        searchNamespace: null,
        watchMethod: 'WATCH',
        resource: 'both',
        reloadURL: 'http://localhost:3000/api/admin/provisioning/datasources/reload',
        skipReload: false,
        initDatasources: false,
      },
      plugins: {
        enabled: false,
        label: 'grafana_plugin',
        labelValue: null,
        searchNamespace: null,
        watchMethod: 'WATCH',
        resource: 'both',
        reloadURL: 'http://localhost:3000/api/admin/provisioning/plugins/reload',
        skipReload: false,
        initPlugins: false,
      },
      notifiers: {
        enabled: false,
        label: 'grafana_notifier',
        searchNamespace: null,
        resource: 'both',
      },
    },
    namespaceOverride: '',
    revisionHistoryLimit: 10,
    imageRenderer: {
      enabled: false,
      replicas: 1,
      image: {
        repository: 'grafana/grafana-image-renderer',
        tag: 'latest',
        sha: '',
        pullPolicy: 'Always',
      },
      env: {
        HTTP_HOST: '0.0.0.0',
      },
      serviceAccountName: '',
      securityContext: {
      },
      hostAliases: [

      ],
      priorityClassName: '',
      service: {
        enabled: true,
        portName: 'http',
        port: 8081,
        targetPort: 8081,
      },
      grafanaProtocol: 'http',
      grafanaSubPath: '',
      podPortName: 'http',
      revisionHistoryLimit: 10,
      networkPolicy: {
        limitIngress: true,
        limitEgress: false,
      },
      resources: {
      },
    },
    networkPolicy: {
      enabled: false,
      allowExternal: true,
      explicitNamespacesSelector: {
      },
    },
    enableKubeBackwardCompatibility: false,
    extraObjects: [

    ],
  },
  // for terraform
  'main.tf.json': {
    terraform: {
      required_providers: {
        grafana: {
          source: 'grafana/grafana',
          version: '1.21.1',
        },
      },
      // backend: {
      //   pg: {
      //     conn_str: 'postgres://postgres:postgres@127.0.0.1:5432/grafana_terraform_backend?sslmode=disable',
      //   },
      // },
    },
    provider: {
      grafana: {
        url: 'http://127.0.0.1:3000',
        // https://registry.terraform.io/providers/grafana/grafana/latest/docs#auth
        auth: 'admin:admin',
      },
    },
    resource: {
      grafana_data_source: {
        prometheus: {
          type: 'prometheus',
          name: 'amp',
          url: 'https://aps-workspaces.eu-west-1.amazonaws.com/workspaces/ws-1234567890/',
          json_data: {
            http_method: 'POST',
            sigv4_auth: true,
            sigv4_auth_type: 'default',
            sigv4_region: 'eu-west-1',
          },
        },
      },
      grafana_team: {
        infraTeam: {
          name: 'infraTeam',
        },
        bizTeam: {
          name: 'bizTeam',
        },
      },
      grafana_user: {
        justin: {
          email: 'justin@example.com',
          password: '123456'
        },
        mm: {
          email: 'mm@goog.com',
          password: '123456'
        },
      },
      grafana_folder_permission: {
        base:: {  
          permissions: [
            {
              role: 'Editor',
              permission: 'Edit',
            },
            {
              team_id: '${grafana_team.infraTeam.id}',
              permission: 'Edit',
            },
            {
              team_id: '${grafana_team.bizTeam.id}',
              permission: 'View',
            },
            {
              user_id: '${grafana_user.mm.id}',
              permission: 'Admin',
            },
          ],
        },
        platformFoo: self.base {
          folder_uid: '${grafana_folder.platformFoo.uid}',
        },
        platformBar: self.base {
          folder_uid: '${grafana_folder.platformBar.uid}',
        },
      },
      grafana_folder: {
        platformFoo: {
        // uid: 'platform-for-id',
          title: 'platformFoo',
        },
        platformBar: {
          // uid: 'platform-bar-id',
          title: 'platformBar',
        },
      },
      grafana_dashboard: {
        platformFooApplications: {
          folder: '${grafana_folder.platformFoo.id}',
          config_json: std.toString(dashboards._application),
        },
        platformFooInfra: {
          folder: '${grafana_folder.platformBar.id}',
          config_json: std.toString(dashboards._infra),
        },

      },

    },
  },
}
