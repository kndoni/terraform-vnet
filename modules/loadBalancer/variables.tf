variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
}

variable "nic" {
  description = "The Network Interface Card (NIC) configuration."
  type = list(string)
}

variable "virtual_network_id" {
  description = "The ID of the Virtual Network."
  type        = string
}

variable "resource_tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default     = {
    Environment = ""
    Region      = "westeurope"
    Owner       = "kristindoni"
    Project     = "Ollama"
  }
}

variable "sku" {
  type = string
}