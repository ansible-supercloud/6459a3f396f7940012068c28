# Api Connect Instance module

Module to populate a gitops repo with the resources to provision cp-apic


## Software dependencies

The module depends on the following software components:

### Terraform version

- \>= v0.15

### Terraform providers


- gitops (cloud-native-toolkit/gitops)

### Module dependencies


- gitops - [github.com/cloud-native-toolkit/terraform-tools-gitops.git](https://github.com/cloud-native-toolkit/terraform-tools-gitops.git) (>= 1.1.0)
- namespace - [github.com/cloud-native-toolkit/terraform-gitops-namespace.git](https://github.com/cloud-native-toolkit/terraform-gitops-namespace.git) (>= 1.0.0)
- platform-navigator - [github.com/cloud-native-toolkit/terraform-gitops-cp-platform-navigator.git](https://github.com/cloud-native-toolkit/terraform-gitops-cp-platform-navigator.git) (>= 1.0.0)
- apic-operator - [github.com/cloud-native-toolkit/terraform-gitops-cp-apic-operator.git](https://github.com/cloud-native-toolkit/terraform-gitops-cp-apic-operator.git) (>= 1.0.0)
- dep-manager - [github.com/cloud-native-toolkit/terraform-cp4i-dependency-management.git](https://github.com/cloud-native-toolkit/terraform-cp4i-dependency-management.git) (>= 0.0.0)
- storage - [github.com/cloud-native-toolkit/terraform-util-storage-class-manager.git](https://github.com/cloud-native-toolkit/terraform-util-storage-class-manager.git) (>= 1.0.0)

## Example usage

```hcl
module "gitops-cp-apic" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-cp-apic"

  apic_version = module.cp4i-version-dependency.apic.version
  catalog = var.gitops-cp-apic_catalog
  catalog_namespace = var.gitops-cp-apic_catalog_namespace
  entitlement_key = var.entitlement_key
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  license_id = module.cp4i-version-dependency.apic.license
  namespace = module.cp4i-apic.name
  profile = var.gitops-cp-apic_profile
  server_name = module.gitops_repo.server_name
  storage_class = module.util-storage-class-manager.block_storage_class
  usage = module.cp4i-version-dependency.apic.license_use
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
| license_id | The license id | true |  | dep-manager.apic.license |
| usage | The usage as production or nonproduction | true |  | dep-manager.apic.license_use |
| profile | apic profile template | false | "n1xc7.m48"  |  |
| apic_version | apic version | true |  | dep-manager.apic.version |
| storage_class | specify block storage class with min 4 IOPs | true |  | storage.block_storage_class |
| entitlement_key | Entitlement key value | true |  |  |
| catalog | The catalog source that should be used to deploy the operator | false | ibm-operator-catalog |  |
| catalog_namespace | The namespace where the catalog has been deployed | false | openshift-marketplace |  |

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
