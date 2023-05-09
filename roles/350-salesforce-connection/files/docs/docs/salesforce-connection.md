# Salesforce Connection module

Module to provision a Salesforce connection


## Software dependencies

The module depends on the following software components:

### Terraform version

- \>= v0.15

### Terraform providers


- azurerm (hashicorp/azurerm)

### Module dependencies


None

## Example usage

```hcl
module "salesforce-connection" {
  source = "github.com/Client-Engineering-Industry-Squad-1/terraform-salesforce-connection"

  provision = var.salesforce-connection_provision
  region = var.region
  resource_group_name = var.salesforce-connection_name
}

```

## Module details

### Inputs

| Name | Description | Required | Default | Source |
|------|-------------|---------|----------|--------|
| resource_group_name | The name of the Salesforce connection | true |  |  |
| provision | Flag indicating that the resource group should be created | false | true |  |
| region | The Azure location where the resource group will be provisioned | true |  |  |

### Outputs

| Name | Description |
|------|-------------|
| name | The name of the resource group |
| id | The id of the resource group |
| group | The resource group object |
| provision | Flag indicating whether the resource group was provisioned |
| region |  |

## Resources

- [Documentation](https://operate.cloudnativetoolkit.dev)
- [Module catalog](https://modules.cloudnativetoolkit.dev)

> License: Apache License 2.0 | Generated by iascable (0.1.8)