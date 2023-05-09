# Event Streams module

Module to populate a gitops repo with the resources to provision cp-event-streams-instance from Cloud pak for integration


## Software dependencies

The module depends on the following software components:

### Terraform version

- \>= v0.15

### Terraform providers


- gitops (cloud-native-toolkit/gitops)

### Module dependencies


- gitops - [github.com/cloud-native-toolkit/terraform-tools-gitops.git](https://github.com/cloud-native-toolkit/terraform-tools-gitops.git) (>= 1.1.0)
- catalogs - [github.com/cloud-native-toolkit/terraform-gitops-cp-catalogs.git](https://github.com/cloud-native-toolkit/terraform-gitops-cp-catalogs.git) (>= 1.0.0)
- dep-manager - [github.com/cloud-native-toolkit/terraform-cp4i-dependency-management.git](https://github.com/cloud-native-toolkit/terraform-cp4i-dependency-management.git) (>= 1.0.0)
- namespace - [github.com/cloud-native-toolkit/terraform-gitops-namespace.git](https://github.com/cloud-native-toolkit/terraform-gitops-namespace.git) (>= 1.0.0)
- eventstreams - [github.com/cloud-native-toolkit/terraform-gitops-cp-es-operator.git](https://github.com/cloud-native-toolkit/terraform-gitops-cp-es-operator.git) (>= 1.0.0)
- storage - [github.com/cloud-native-toolkit/terraform-util-storage-class-manager.git](https://github.com/cloud-native-toolkit/terraform-util-storage-class-manager.git) (>= 1.0.0)

## Example usage

```hcl
module "gitops-cp-event-streams" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-cp-event-streams"

  cpulimits = var.gitops-cp-event-streams_cpulimits
  cpurequests = var.gitops-cp-event-streams_cpurequests
  entitlement_key = module.gitops-cp-catalogs.entitlement_key
  es_apiVersion = var.gitops-cp-event-streams_es_apiVersion
  es_version = var.gitops-cp-event-streams_es_version
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  kafka_inter_broker_protocol_version = var.gitops-cp-event-streams_kafka_inter_broker_protocol_version
  kafka_listeners = var.gitops-cp-event-streams_kafka_listeners
  kafka_log_message_format_version = var.gitops-cp-event-streams_kafka_log_message_format_version
  kafka_replicas = var.gitops-cp-event-streams_kafka_replicas
  kafka_storageclass = module.util-storage-class-manager.block_storage_class
  kafka_storagesize = var.gitops-cp-event-streams_kafka_storagesize
  kafka_storagetype = var.gitops-cp-event-streams_kafka_storagetype
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  license_use = module.cp4i-version-dependency.eventstreams.license_use
  memorylimits = var.gitops-cp-event-streams_memorylimits
  memoryrequests = var.gitops-cp-event-streams_memoryrequests
  namespace = module.cp4i-es.name
  requestIbmServices_iam = var.gitops-cp-event-streams_requestIbmServices_iam
  requestIbmServices_monitoring = var.gitops-cp-event-streams_requestIbmServices_monitoring
  server_name = module.gitops_repo.server_name
  service_name = var.gitops-cp-event-streams_service_name
  zookeeper_replicas = var.gitops-cp-event-streams_zookeeper_replicas
  zookeeper_storageclass = module.util-storage-class-manager.block_storage_class
  zookeeper_storagesize = var.gitops-cp-event-streams_zookeeper_storagesize
  zookeeper_storagetype = var.gitops-cp-event-streams_zookeeper_storagetype
}

```

## Module details

### Inputs

| Name | Description | Required | Default | Source |
|------|-------------|---------|----------|--------|
| gitops_config | Config information regarding the gitops repo structure | true |  | gitops.gitops_config |
| git_credentials | The credentials for the gitops repo(s) | true |  | gitops.git_credentials |
| namespace | The namespace where the application should be deployed | true |  | namespace.name |
| kubeseal_cert | The certificate/public key used to encrypt the sealed secrets | true |  | gitops.sealed_secrets_cert |
| server_name | The name of the server | false | default | gitops.server_name |
| entitlement_key | The entitlement key required to access Cloud Pak images | true |  | catalogs.entitlement_key |
| license_use | Usage for Production or Non-Production | false | CloudPakForIntegrationNonProduction | dep-manager.eventstreams.license_use |
| requestIbmServices_iam | IAM services | false | true |  |
| requestIbmServices_monitoring | Monitoring services | false | true |  |
| kafka_replicas | Number of kafka replicas | false | "3" |  |
| zookeeper_replicas | Number of zookeeper replicas | false | "3" |  |
| es_version | Version of Event streams to be installed | false | 11.0.2 |  |
| cpulimits | CPU limits for the kafka instance | false | 1 |  |
| cpurequests | CPU requests for the kafka instance | false | 100m |  |
| memorylimits | Memory limits for the kafka instance | false | 2Gi |  |
| memoryrequests | Memory requests for the kafka instance | false | 128Mi |  |
| kafka_storageclass | Storage class for kafka - applicable only for persistent storage type | true |  | storage.block_storage_class |
| zookeeper_storageclass | Storage class for zookeeper - applicable only for persistent storage type | true |  | storage.block_storage_class |
| kafka_storagetype | Storage type for kafka | false | persistent-claim |  |
| zookeeper_storagetype | Storage type for zookeeper | false | persistent-claim |  |
| kafka_storagesize | Storage size - applicable only for persistent storage type | false | 10Gi |  |
| zookeeper_storagesize | Storage size - applicable only for persistent storage type | false | 4Gi |  |
| service_name | Event stream instance name | false | es-instance |  |
| es_apiVersion | Event stream API version | false | v1beta2 |  |
| kafka_inter_broker_protocol_version | Kafka config inter broker protocol version | false | 3.2 |  |
| kafka_log_message_format_version | Kafka config loag message format version | false | 3.2 |  |
| kafka_listeners | Kafka listerners defaults to secure - override to provide light-insecure | false | [] |  |

### Outputs

| Name | Description |
|------|-------------|
| name | The name of the module |
| branch | The branch where the module config has been placed |
| namespace | The namespace where the module will be deployed |
| server_name | The server where the module will be deployed |
| layer | The layer where the module is deployed |
| type | The type of module where the module is deployed |

## Resources

- [Documentation](https://operate.cloudnativetoolkit.dev)
- [Module catalog](https://modules.cloudnativetoolkit.dev)

> License: Apache License 2.0 | Generated by iascable (0.1.8)
