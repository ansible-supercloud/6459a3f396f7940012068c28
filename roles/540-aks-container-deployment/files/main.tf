module "aks-container-deployment" {
  source = "github.com/Client-Engineering-Industry-Squad-1/terraform-aks-container-deployment?ref=v1.0.0"

  provision = var.aks-container-deployment_provision
  region = var.region
  resource_group_name = var.aks-container-deployment_name
}
