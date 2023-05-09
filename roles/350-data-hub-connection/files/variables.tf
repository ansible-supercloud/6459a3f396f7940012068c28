variable "data-hub-connection_name" {
  type = string
  description = "The name of the Data Hub connection"
}
variable "data-hub-connection_provision" {
  type = bool
  description = "Flag indicating that the resource group should be created"
  default = true
}
variable "region" {
  type = string
  description = "The Azure location where the resource group will be provisioned"
}
variable "subscription_id" {
  type = string
  description = "the value of subscription_id"
}
variable "client_id" {
  type = string
  description = "the value of client_id"
}
variable "client_secret" {
  type = string
  description = "the value of client_secret"
}
variable "tenant_id" {
  type = string
  description = "the value of tenant_id"
}
