## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.private_vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_linux_virtual_machine.public_vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.private_nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface.public_nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_public_ip.public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | The deployment environment (e.g., dev, prod, staging). | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure region (e.g., eastus, westeurope) where resources will be deployed. | `string` | n/a | yes |
| <a name="input_private_vm_size"></a> [private\_vm\_size](#input\_private\_vm\_size) | The size (SKU) of the private virtual machine. | `string` | n/a | yes |
| <a name="input_public_key_path"></a> [public\_key\_path](#input\_public\_key\_path) | The file path for the SSH public key used for admin access to the VMs. | `string` | n/a | yes |
| <a name="input_public_vm_size"></a> [public\_vm\_size](#input\_public\_vm\_size) | The size (SKU) of the public virtual machine. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Azure resource group to deploy resources into. | `string` | n/a | yes |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | A map of tags to assign to resources | `map(string)` | <pre>{<br/>  "Environment": "",<br/>  "Owner": "kristindoni",<br/>  "Project": "Ollama",<br/>  "Region": "westeurope"<br/>}</pre> | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The subnet ID where the VM network interface will be attached. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_nic"></a> [private\_nic](#output\_private\_nic) | n/a |
| <a name="output_public_nic"></a> [public\_nic](#output\_public\_nic) | n/a |
