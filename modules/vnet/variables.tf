variable "environment" {
  description = "The deployment environment. Allowed values: dev, staging, prod."
  type        = string
  validation {
    condition     = contains(["dev", "staging", "prod"], lower(var.environment))
    error_message = "Environment must be one of: dev, staging, or prod."
  }
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group where resources will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region for resource deployment (e.g., eastus, westeurope)."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "vnet_address_prefix" {
  description = "The address prefix (CIDR) for the virtual network, e.g., '10.0.0.0/16'."
  type        = string
  validation {
    condition     = can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}/[0-9]{1,2}$", var.vnet_address_prefix))
    error_message = "vnet_address_prefix must be a valid CIDR block (e.g., 10.0.0.0/16)."
  }
}

variable "subnets" {
  description = "A map of subnets to be created within the virtual network. Each subnet object should include a name and a list of CIDR prefixes."
  type = map(object({
    name             = string
    address_prefixes = string
  }))
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