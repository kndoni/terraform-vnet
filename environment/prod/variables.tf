variable "environment" {}
variable "resource_group_name" {}
variable "location" {}
variable "vnet_name" {}
variable "vnet_address_prefix" {}
variable "subnets" {}
variable "public_vm_size" {}
variable "private_vm_size" {}
variable "nsg_name" {}
variable "resource_tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default     = {
    Environment = "prod"
    Region      = "westeurope"
    Owner       = "kristindoni"
    Project     = "Ollama"
  }
}
