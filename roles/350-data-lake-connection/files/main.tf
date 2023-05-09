module "data-lake-connection" {
  source = "github.com/Client-Engineering-Industry-Squad-1/terraform-data-lake-connection?ref=v1.0.0"

  provision = var.data-lake-connection_provision
  region = var.region
  resource_group_name = var.data-lake-connection_name
}
