module "salesforce-connection" {
  source = "github.com/Client-Engineering-Industry-Squad-1/terraform-salesforce-connection?ref=v1.0.0"

  provision = var.salesforce-connection_provision
  region = var.region
  resource_group_name = var.salesforce-connection_name
}
