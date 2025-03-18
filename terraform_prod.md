## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.95.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_lb"></a> [lb](#module\_lb) | ../../modules/loadBalancer | n/a |
| <a name="module_prod_compute"></a> [prod\_compute](#module\_prod\_compute) | ../../modules/vm | n/a |
| <a name="module_prod_nsg_1"></a> [prod\_nsg\_1](#module\_prod\_nsg\_1) | ../../modules/nsg | n/a |
| <a name="module_prod_vnet_1"></a> [prod\_vnet\_1](#module\_prod\_vnet\_1) | ../../modules/vnet | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `any` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `any` | n/a | yes |
| <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name) | n/a | `any` | n/a | yes |
| <a name="input_private_vm_size"></a> [private\_vm\_size](#input\_private\_vm\_size) | n/a | `any` | n/a | yes |
| <a name="input_public_vm_size"></a> [public\_vm\_size](#input\_public\_vm\_size) | n/a | `any` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `any` | n/a | yes |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | A map of tags to assign to resources | `map(string)` | <pre>{<br/>  "Environment": "prod",<br/>  "Owner": "kristindoni",<br/>  "Project": "Ollama",<br/>  "Region": "westeurope"<br/>}</pre> | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_vnet_address_prefix"></a> [vnet\_address\_prefix](#input\_vnet\_address\_prefix) | n/a | `any` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
