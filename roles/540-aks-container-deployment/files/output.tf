output "aks-container-deployment_name" {
  description = "The name of the AKS container deployment"
  value = module.aks-container-deployment.name
}
output "aks-container-deployment_id" {
  description = "The id of the resource group"
  value = module.aks-container-deployment.id
}
output "aks-container-deployment_group" {
  description = "The resource group object"
  value = module.aks-container-deployment.group
}
output "aks-container-deployment_provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value = module.aks-container-deployment.provision
}
output "aks-container-deployment_region" {
  description = "the value of aks-container-deployment_region"
  value = module.aks-container-deployment.region
}
