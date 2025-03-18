## Requirements

The following requirements are needed by this module:

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (~> 3.95.0)

## Providers

No providers.

## Modules

The following Modules are called:

### <a name="module_dev_compute"></a> [dev\_compute](#module\_dev\_compute)

Source: ../../modules/vm

Version:

### <a name="module_dev_nsg_1"></a> [dev\_nsg\_1](#module\_dev\_nsg\_1)

Source: ../../modules/nsg

Version:

### <a name="module_dev_vnet_1"></a> [dev\_vnet\_1](#module\_dev\_vnet\_1)

Source: ../../modules/vnet

Version:

### <a name="module_lb"></a> [lb](#module\_lb)

Source: ../../modules/loadBalancer

Version:

## Resources

No resources.

## Required Inputs

The following input variables are required:

### <a name="input_environment"></a> [environment](#input\_environment)

Description: The deployment environment

Type: `string`

### <a name="input_location"></a> [location](#input\_location)

Description: Azure region for deployment

Type: `string`

### <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name)

Description: Name of the network security group

Type: `string`

### <a name="input_private_vm_size"></a> [private\_vm\_size](#input\_private\_vm\_size)

Description: VM size for private subnet

Type: `string`

### <a name="input_public_vm_size"></a> [public\_vm\_size](#input\_public\_vm\_size)

Description: VM size for public subnet

Type: `string`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: Name of the resource group

Type: `string`

### <a name="input_subnets"></a> [subnets](#input\_subnets)

Description: Map of subnet configurations

Type:

```hcl
map(object({
    name             = string
    address_prefixes = string
  }))
```

### <a name="input_vnet_address_prefix"></a> [vnet\_address\_prefix](#input\_vnet\_address\_prefix)

Description: Address prefix for the virtual network

Type: `string`

### <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name)

Description: Name of the virtual network

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags)

Description: A map of tags to assign to resources

Type: `map(string)`

Default:

```json
{
  "Environment": "dev",
  "Owner": "kristindoni",
  "Project": "Ollama",
  "Region": "westeurope"
}
```

## Outputs

No outputs.
## Requirements

The following requirements are needed by this module:

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (~> 3.95.0)

## Providers

No providers.

## Modules

The following Modules are called:

### <a name="module_lb"></a> [lb](#module\_lb)

Source: ../../modules/loadBalancer

Version:

### <a name="module_prod_compute"></a> [prod\_compute](#module\_prod\_compute)

Source: ../../modules/vm

Version:

### <a name="module_prod_nsg_1"></a> [prod\_nsg\_1](#module\_prod\_nsg\_1)

Source: ../../modules/nsg

Version:

### <a name="module_prod_vnet_1"></a> [prod\_vnet\_1](#module\_prod\_vnet\_1)

Source: ../../modules/vnet

Version:

## Resources

No resources.

## Required Inputs

The following input variables are required:

### <a name="input_environment"></a> [environment](#input\_environment)

Description: The deployment environment

Type: `string`

### <a name="input_location"></a> [location](#input\_location)

Description: Azure region for deployment

Type: `string`

### <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name)

Description: Name of the network security group

Type: `string`

### <a name="input_private_vm_size"></a> [private\_vm\_size](#input\_private\_vm\_size)

Description: VM size for private subnet

Type: `string`

### <a name="input_public_vm_size"></a> [public\_vm\_size](#input\_public\_vm\_size)

Description: VM size for public subnet

Type: `string`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: Name of the resource group

Type: `string`

### <a name="input_subnets"></a> [subnets](#input\_subnets)

Description: Map of subnet configurations

Type:

```hcl
map(object({
    name             = string
    address_prefixes = string
  }))
```

### <a name="input_vnet_address_prefix"></a> [vnet\_address\_prefix](#input\_vnet\_address\_prefix)

Description: Address prefix for the virtual network

Type: `string`

### <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name)

Description: Name of the virtual network

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags)

Description: A map of tags to assign to resources

Type: `map(string)`

Default:

```json
{
  "Environment": "prod",
  "Owner": "kristindoni",
  "Project": "Ollama",
  "Region": "westeurope"
}
```

## Outputs

No outputs.
## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) (resource)
- [azurerm_subnet_network_security_group_association.Mathan_Nsg_Subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_location"></a> [location](#input\_location)

Description: The Azure region (e.g., eastus, westeurope) for the NSG deployment.

Type: `string`

### <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name)

Description: The name of the Network Security Group (NSG).

Type: `string`

### <a name="input_nsg_rules"></a> [nsg\_rules](#input\_nsg\_rules)

Description: A list of NSG rules. Each rule must define a name, priority, direction, access, protocol, source/destination port range, and source/destination address prefix.

Type:

```hcl
list(object({
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
```

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: The name of the Azure resource group where the NSG will be deployed.

Type: `string`

### <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id)

Description: The ID of the subnet to which the NSG will be associated.

Type: `map(string)`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags)

Description: A map of tags to assign to resources

Type: `map(string)`

Default:

```json
{
  "Environment": "",
  "Owner": "kristindoni",
  "Project": "Ollama",
  "Region": "westeurope"
}
```

## Outputs

No outputs.
## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [azurerm_linux_virtual_machine.private_vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) (resource)
- [azurerm_linux_virtual_machine.public_vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) (resource)
- [azurerm_network_interface.private_nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) (resource)
- [azurerm_network_interface.public_nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) (resource)
- [azurerm_public_ip.public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_environment"></a> [environment](#input\_environment)

Description: The deployment environment (e.g., dev, prod, staging).

Type: `string`

### <a name="input_location"></a> [location](#input\_location)

Description: The Azure region (e.g., eastus, westeurope) where resources will be deployed.

Type: `string`

### <a name="input_private_vm_size"></a> [private\_vm\_size](#input\_private\_vm\_size)

Description: The size (SKU) of the private virtual machine.

Type: `string`

### <a name="input_public_key_path"></a> [public\_key\_path](#input\_public\_key\_path)

Description: The file path for the SSH public key used for admin access to the VMs.

Type: `string`

### <a name="input_public_vm_size"></a> [public\_vm\_size](#input\_public\_vm\_size)

Description: The size (SKU) of the public virtual machine.

Type: `string`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: The name of the Azure resource group to deploy resources into.

Type: `string`

### <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id)

Description: The subnet ID where the VM network interface will be attached.

Type: `map(string)`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags)

Description: A map of tags to assign to resources

Type: `map(string)`

Default:

```json
{
  "Environment": "",
  "Owner": "kristindoni",
  "Project": "Ollama",
  "Region": "westeurope"
}
```

## Outputs

The following outputs are exported:

### <a name="output_private_nic"></a> [private\_nic](#output\_private\_nic)

Description: n/a

### <a name="output_public_nic"></a> [public\_nic](#output\_public\_nic)

Description: n/a
## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [azurerm_lb.lb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb) (resource)
- [azurerm_lb_backend_address_pool.lb_backend](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_backend_address_pool) (resource)
- [azurerm_lb_backend_address_pool_address.pool_address](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_backend_address_pool_address) (resource)
- [azurerm_lb_rule.lb_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_rule) (resource)
- [azurerm_public_ip.lb_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_environment"></a> [environment](#input\_environment)

Description: The deployment environment (e.g., dev, staging, prod).

Type: `string`

### <a name="input_location"></a> [location](#input\_location)

Description: The Azure region where resources will be deployed.

Type: `string`

### <a name="input_nic"></a> [nic](#input\_nic)

Description: The Network Interface Card (NIC) configuration.

Type: `list(string)`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: The name of the Azure Resource Group.

Type: `string`

### <a name="input_virtual_network_id"></a> [virtual\_network\_id](#input\_virtual\_network\_id)

Description: The ID of the Virtual Network.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags)

Description: A map of tags to assign to resources

Type: `map(string)`

Default:

```json
{
  "Environment": "",
  "Owner": "kristindoni",
  "Project": "Ollama",
  "Region": "westeurope"
}
```

## Outputs

No outputs.
## Requirements

The following requirements are needed by this module:

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (3.95.0)

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) (3.95.0)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [azurerm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/3.95.0/docs/resources/resource_group) (resource)
- [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.95.0/docs/resources/subnet) (resource)
- [azurerm_virtual_network.virtual_network](https://registry.terraform.io/providers/hashicorp/azurerm/3.95.0/docs/resources/virtual_network) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_environment"></a> [environment](#input\_environment)

Description: The deployment environment. Allowed values: dev, staging, prod.

Type: `string`

### <a name="input_location"></a> [location](#input\_location)

Description: The Azure region for resource deployment (e.g., eastus, westeurope).

Type: `string`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: The name of the Azure Resource Group where resources will be deployed.

Type: `string`

### <a name="input_subnets"></a> [subnets](#input\_subnets)

Description: A map of subnets to be created within the virtual network. Each subnet object should include a name and a list of CIDR prefixes.

Type:

```hcl
map(object({
    name             = string
    address_prefixes = string
  }))
```

### <a name="input_vnet_address_prefix"></a> [vnet\_address\_prefix](#input\_vnet\_address\_prefix)

Description: The address prefix (CIDR) for the virtual network, e.g., '10.0.0.0/16'.

Type: `string`

### <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name)

Description: The name of the virtual network.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags)

Description: A map of tags to assign to resources

Type: `map(string)`

Default:

```json
{
  "Environment": "",
  "Owner": "kristindoni",
  "Project": "Ollama",
  "Region": "westeurope"
}
```

## Outputs

The following outputs are exported:

### <a name="output_environment"></a> [environment](#output\_environment)

Description: n/a

### <a name="output_location"></a> [location](#output\_location)

Description: n/a

### <a name="output_resource_group"></a> [resource\_group](#output\_resource\_group)

Description: used the output values in different modules easily

### <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id)

Description: n/a

### <a name="output_virtual_network_id"></a> [virtual\_network\_id](#output\_virtual\_network\_id)

Description: n/a
