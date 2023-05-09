# 350-data-lake-connection

Data Lake Connection

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
| [data-lake-connection](https://github.com/Client-Engineering-Industry-Squad-1/terraform-data-lake-connection) | Module to provision a Data Lake connection | v1.0.0 |

### Variables

| Name | Description | Sensitive | Default value |
|------|-------------|-----------|---------------|
| data-lake-connection_name | The name of the Data Lake connection |  |  |
| region | The Azure location where the resource group will be provisioned |  |  |
| subscription_id |  |  |  |
| client_id |  |  |  |
| client_secret |  | true |  |
| tenant_id |  |  |  |

## Troubleshooting

