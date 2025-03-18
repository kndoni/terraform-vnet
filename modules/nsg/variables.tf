variable "nsg_name" {
  description = "The name of the Network Security Group (NSG)."
  type        = string
  validation {
    condition = length(trim(var.nsg_name, " ")) > 0
    error_message = "NSG name must not be empty."
  }
}

variable "nsg_rules" {
  description = "A list of NSG rules. Each rule must define a name, priority, direction, access, protocol, source/destination port range, and source/destination address prefix."
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))

  validation {
    condition = (
      length(var.nsg_rules) > 0 &&
      alltrue([for rule in var.nsg_rules : contains(["Inbound", "Outbound"], rule.direction)]) &&
      alltrue([for rule in var.nsg_rules : contains(["Allow", "Deny"], rule.access)])
    )
    error_message = "NSG rules must be provided. Each rule's direction must be either 'Inbound' or 'Outbound' and access must be either 'Allow' or 'Deny'."
  }
}

variable "resource_group_name" {
  description = "The name of the Azure resource group where the NSG will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region (e.g., eastus, westeurope) for the NSG deployment."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to which the NSG will be associated."
  type        = map(string)
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