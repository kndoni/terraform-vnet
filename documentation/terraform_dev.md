## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.95.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dev_compute"></a> [dev\_compute](#module\_dev\_compute) | ../../modules/vm | n/a |
| <a name="module_dev_nsg_1"></a> [dev\_nsg\_1](#module\_dev\_nsg\_1) | ../../modules/nsg | n/a |
| <a name="module_dev_vnet_1"></a> [dev\_vnet\_1](#module\_dev\_vnet\_1) | ../../modules/vnet | n/a |
| <a name="module_lb"></a> [lb](#module\_lb) | ../../modules/loadBalancer | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | The deployment environment | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Azure region for deployment | `string` | n/a | yes |
| <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name) | Name of the network security group | `string` | n/a | yes |
| <a name="input_private_vm_size"></a> [private\_vm\_size](#input\_private\_vm\_size) | VM size for private subnet | `string` | n/a | yes |
| <a name="input_public_vm_size"></a> [public\_vm\_size](#input\_public\_vm\_size) | VM size for public subnet | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group | `string` | n/a | yes |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | A map of tags to assign to resources | `map(string)` | <pre>{<br/>  "Environment": "dev",<br/>  "Owner": "kristindoni",<br/>  "Project": "Ollama",<br/>  "Region": "westeurope"<br/>}</pre> | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Map of subnet configurations | <pre>map(object({<br/>    name             = string<br/>    address_prefixes = string<br/>  }))</pre> | n/a | yes |
| <a name="input_vnet_address_prefix"></a> [vnet\_address\_prefix](#input\_vnet\_address\_prefix) | Address prefix for the virtual network | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Name of the virtual network | `string` | n/a | yes |

## Outputs

No outputs.
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

### <a name="input_sku"></a> [sku](#input\_sku)

Description: n/a

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
