# 101-azure-vnet-std

Azure base infrastructure

## Running the automation

This terraform template is part of collection of layers that should be executed together. Before this layer
can be applied, several steps must first be taken:

1. Run `apply.sh` in the parent directory to generate the input variable configuration for the run. If you'd like to apply one layer at a time, select `n` when prompted to continue.
2. Run `apply.sh` for each of the layer dependencies listed below.
3. Run `apply.sh` for this layer.

## Contents

### Layer dependencies


No dependencies

### Modules

| Name | Description | Version |
|------|-------------|---------|
| [azure-resource-group](https://github.com/cloud-native-toolkit/terraform-azure-resource-group) | Module to provision a resource group on Azure | v1.1.1 |
| [azure-vnet](https://github.com/cloud-native-toolkit/terraform-azure-vnet) | Module to provision vnet on azure | v1.1.3 |
| [azure-vnet-subnets](https://github.com/cloud-native-toolkit/terraform-azure-subnets) | Module to provision vnet-subnets on azure | v1.3.10 |
| [azure-vnet-subnets](https://github.com/cloud-native-toolkit/terraform-azure-subnets) | Module to provision vnet-subnets on azure | v1.3.10 |
| [azure-vnet-subnets](https://github.com/cloud-native-toolkit/terraform-azure-subnets) | Module to provision vnet-subnets on azure | v1.3.10 |
| [azure-nsg](https://github.com/cloud-native-toolkit/terraform-azure-nsg) | Module to provision a Network Security Group on azure | v1.0.5 |
| [azure-ssh-key](https://github.com/cloud-native-toolkit/terraform-azure-ssh-key) | Module to provision an ssh key on azure | v1.0.6 |
| [azure-vpn-server](https://github.com/cloud-native-toolkit/terraform-azure-vpn-server) | Module to provision vpn-server on azure | v1.0.1 |

### Variables

| Name | Description | Sensitive | Default value |
|------|-------------|-----------|---------------|
| resource_group_name | The name of the resource group |  |  |
| region | The Azure location where the resource group will be provisioned |  |  |
| subscription_id |  |  |  |
| client_id |  |  |  |
| client_secret |  | true |  |
| tenant_id |  |  |  |

## Troubleshooting

