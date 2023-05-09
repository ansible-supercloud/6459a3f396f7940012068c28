# CP MQ Uniform Cluster module

Module to populate a gitops repo with the resources to provision cp-mq-uniform-cluster


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
- mq - [github.com/cloud-native-toolkit/terraform-gitops-cp-mq.git](https://github.com/cloud-native-toolkit/terraform-gitops-cp-mq.git) (>= 1.0.0)
- storage - [github.com/cloud-native-toolkit/terraform-util-storage-class-manager.git](https://github.com/cloud-native-toolkit/terraform-util-storage-class-manager.git) (>= 1.0.0)

## Example usage

```hcl
module "gitops-cp-mq-uniform-cluster" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-cp-mq-uniform-cluster"

  entitlement_key = module.gitops-cp-catalogs.entitlement_key
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  ini_configmap = var.gitops-cp-mq-uniform-cluster_ini_configmap
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  license = module.cp4i-version-dependency.mq.license
  license_use = module.cp4i-version-dependency.mq.license_use
  MQ_AvailabilityType = var.gitops-cp-mq-uniform-cluster_MQ_AvailabilityType
  mq_version = module.cp4i-version-dependency.mq.version
  mqsc_configmap = var.gitops-cp-mq-uniform-cluster_mqsc_configmap
  namespace = module.cp4i-mq-cluster.name
  rwo_storage_class = module.util-storage-class-manager.rwo_storage_class
  rwx_storage_class = module.util-storage-class-manager.rwx_storage_class
  server_name = module.gitops_repo.server_name
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
| license | The Licesence for MQ on CP4i | false | L-RJON-C7QG3S | dep-manager.mq.license |
| license_use | License use. Production or NonProduction | false | NonProduction | dep-manager.mq.license_use |
| mqsc_configmap | Name of the config map which holds the MQSC configuration | false | mq-uniform-cluster-mqsc-cm |  |
| ini_configmap | Name of the config map which holds the ini configuration | false | mq-uniform-cluster-ini-cm |  |
| MQ_AvailabilityType | AvailabilityType of MQ. Possible Values are (SingleInstance/MultiInstance/NativeHA) | false | SingleInstance |  |
| rwx_storage_class | Storage class used for MultiInstance availability type. | true |  | storage.rwx_storage_class |
| rwo_storage_class | Storage class used for ingleInstance availability type. | true |  | storage.rwo_storage_class |
| mq_version | Version of MQ server | false | 9.2.4.0-r1 | dep-manager.mq.version |
| entitlement_key | The entitlement key required to access Cloud Pak images | true |  | catalogs.entitlement_key |

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