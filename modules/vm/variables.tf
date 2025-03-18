variable "environment" {
  description = "The deployment environment (e.g., dev, prod, staging)."
  type        = string
  validation {
    condition     = contains(["dev", "prod", "staging"], lower(var.environment))
    error_message = "Environment must be one of: dev, prod, or staging."
  }
}

variable "resource_group_name" {
  description = "The name of the Azure resource group to deploy resources into."
  type        = string
}

variable "location" {
  description = "The Azure region (e.g., eastus, westeurope) where resources will be deployed."
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID where the VM network interface will be attached."
  type = map(string)
}

variable "public_vm_size" {
  description = "The size (SKU) of the public virtual machine."
  type        = string
}

variable "private_vm_size" {
  description = "The size (SKU) of the private virtual machine."
  type        = string
}

variable "public_key_path" {
  description = "The file path for the SSH public key used for admin access to the VMs."
  type        = string
  validation {
    # The 'can' function attempts to read the file and returns true if successful.
    condition     = can(file(var.public_key_path))
    error_message = "The file specified in public_key_path does not exist or cannot be read."
  }
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
