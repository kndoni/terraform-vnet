variable "environment" {
  description = "The deployment environment"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_prefix" {
  description = "Address prefix for the virtual network"
  type        = string
}

variable "subnets" {
  description = "Map of subnet configurations"
  type = map(object({
    name             = string
    address_prefixes = string
  }))
}
variable "sku" {
  type = string
}

variable "public_vm_size" {
  description = "VM size for public subnet"
  type        = string
}

variable "private_vm_size" {
  description = "VM size for private subnet"
  type        = string
}

variable "nsg_name" {
  description = "Name of the network security group"
  type        = string
}

variable "resource_tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Region      = "westeurope"
    Owner       = "kristindoni"
    Project     = "Ollama"
  }
}