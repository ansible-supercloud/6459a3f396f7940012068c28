module "data-hub-connection" {
  source = "github.com/Client-Engineering-Industry-Squad-1/terraform-data-hub-connection?ref=v1.0.0"

  provision = var.data-hub-connection_provision
  region = var.region
  resource_group_name = var.data-hub-connection_name
}
