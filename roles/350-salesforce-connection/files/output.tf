output "salesforce-connection_name" {
  description = "The name of the resource group"
  value = module.salesforce-connection.name
}
output "salesforce-connection_id" {
  description = "The id of the resource group"
  value = module.salesforce-connection.id
}
output "salesforce-connection_group" {
  description = "The resource group object"
  value = module.salesforce-connection.group
}
output "salesforce-connection_provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value = module.salesforce-connection.provision
}
output "salesforce-connection_region" {
  description = "the value of salesforce-connection_region"
  value = module.salesforce-connection.region
}
