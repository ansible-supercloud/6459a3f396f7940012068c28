output "data-lake-connection_name" {
  description = "The name of the Data Lake connection"
  value = module.data-lake-connection.name
}
output "data-lake-connection_id" {
  description = "The id of the resource group"
  value = module.data-lake-connection.id
}
output "data-lake-connection_group" {
  description = "The resource group object"
  value = module.data-lake-connection.group
}
output "data-lake-connection_provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value = module.data-lake-connection.provision
}
output "data-lake-connection_region" {
  description = "the value of data-lake-connection_region"
  value = module.data-lake-connection.region
}
