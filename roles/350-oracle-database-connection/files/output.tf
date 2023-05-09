output "oracle-database-connection_name" {
  description = "The name of the Oracle Database connection"
  value = module.oracle-database-connection.name
}
output "oracle-database-connection_id" {
  description = "The id of the resource group"
  value = module.oracle-database-connection.id
}
output "oracle-database-connection_group" {
  description = "The resource group object"
  value = module.oracle-database-connection.group
}
output "oracle-database-connection_provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value = module.oracle-database-connection.provision
}
output "oracle-database-connection_region" {
  description = "the value of oracle-database-connection_region"
  value = module.oracle-database-connection.region
}
