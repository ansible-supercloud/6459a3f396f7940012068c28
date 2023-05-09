output "data-hub-connection_name" {
  description = "The name of the Data Hub connection"
  value = module.data-hub-connection.name
}
output "data-hub-connection_id" {
  description = "The id of the resource group"
  value = module.data-hub-connection.id
}
output "data-hub-connection_group" {
  description = "The resource group object"
  value = module.data-hub-connection.group
}
output "data-hub-connection_provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value = module.data-hub-connection.provision
}
output "data-hub-connection_region" {
  description = "the value of data-hub-connection_region"
  value = module.data-hub-connection.region
}
