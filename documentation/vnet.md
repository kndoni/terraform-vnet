## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.95.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.95.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/3.95.0/docs/resources/resource_group) | resource |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.95.0/docs/resources/subnet) | resource |
| [azurerm_virtual_network.virtual_network](https://registry.terraform.io/providers/hashicorp/azurerm/3.95.0/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | The deployment environment. Allowed values: dev, staging, prod. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure region for resource deployment (e.g., eastus, westeurope). | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Azure Resource Group where resources will be deployed. | `string` | n/a | yes |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | A map of tags to assign to resources | `map(string)` | <pre>{<br/>  "Environment": "",<br/>  "Owner": "kristindoni",<br/>  "Project": "Ollama",<br/>  "Region": "westeurope"<br/>}</pre> | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | A map of subnets to be created within the virtual network. Each subnet object should include a name and a list of CIDR prefixes. | <pre>map(object({<br/>    name             = string<br/>    address_prefixes = string<br/>  }))</pre> | n/a | yes |
| <a name="input_vnet_address_prefix"></a> [vnet\_address\_prefix](#input\_vnet\_address\_prefix) | The address prefix (CIDR) for the virtual network, e.g., '10.0.0.0/16'. | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | The name of the virtual network. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_environment"></a> [environment](#output\_environment) | n/a |
| <a name="output_location"></a> [location](#output\_location) | n/a |
| <a name="output_resource_group"></a> [resource\_group](#output\_resource\_group) | used the output values in different modules easily |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | n/a |
| <a name="output_virtual_network_id"></a> [virtual\_network\_id](#output\_virtual\_network\_id) | n/a |
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
