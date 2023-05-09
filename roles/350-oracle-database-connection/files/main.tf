module "oracle-database-connection" {
  source = "github.com/Client-Engineering-Industry-Squad-1/terraform-oracle-database-connection?ref=v1.0.0"

  provision = var.oracle-database-connection_provision
  region = var.region
  resource_group_name = var.oracle-database-connection_name
}
