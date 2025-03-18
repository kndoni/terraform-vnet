/home/runner/work/_temp/a0d23595-b11e-471c-bd52-abb89f3db91d/terraform-bin plan -out=tfplan -var-file=terraform.tfvars -lock=false
module.dev_vnet_1.azurerm_resource_group.resource_group: Refreshing state... [id=/subscriptions/***/resourceGroups/RG_OLLAMA_DEV_VNET]

Note: Objects have changed outside of Terraform

Terraform detected the following changes made outside of Terraform since the
last "terraform apply" which may have affected this plan:

  # module.dev_vnet_1.azurerm_resource_group.resource_group has been deleted
  - resource "azurerm_resource_group" "resource_group" {
        id         = "/subscriptions/***/resourceGroups/RG_OLLAMA_DEV_VNET"
      - location   = "westeurope" -> null
      - name       = "RG_OLLAMA_DEV_VNET" -> null
        tags       = {
            "env"   = "dev"
            "name"  = "dev-resource-group"
            "owner" = "Kristi"
        }
        # (1 unchanged attribute hidden)
    }


Unless you have made equivalent changes to your configuration, or ignored the
relevant attributes using ignore_changes, the following plan may include
actions to undo or respond to these changes.

─────────────────────────────────────────────────────────────────────────────

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.dev_compute.azurerm_linux_virtual_machine.private_vm[0] will be created
  + resource "azurerm_linux_virtual_machine" "private_vm" {
      + admin_username                                         = "azureuser"
      + allow_extension_operations                             = true
      + bypass_platform_safety_checks_on_user_schedule_enabled = false
      + computer_name                                          = (known after apply)
      + disable_password_authentication                        = true
      + disk_controller_type                                   = (known after apply)
      + extensions_time_budget                                 = "PT1H30M"
      + id                                                     = (known after apply)
      + location                                               = "westeurope"
      + max_bid_price                                          = -1
      + name                                                   = "dev-privateVm-1"
      + network_interface_ids                                  = (known after apply)
      + patch_assessment_mode                                  = "ImageDefault"
      + patch_mode                                             = "ImageDefault"
      + platform_fault_domain                                  = -1
      + priority                                               = "Regular"
      + private_ip_address                                     = (known after apply)
      + private_ip_addresses                                   = (known after apply)
      + provision_vm_agent                                     = true
      + public_ip_address                                      = (known after apply)
      + public_ip_addresses                                    = (known after apply)
      + resource_group_name                                    = "RG_OLLAMA_DEV_VNET"
      + size                                                   = "Standard_DS1_v2"
      + tags                                                   = {
          + "Environment" = "dev"
          + "Owner"       = "kristindoni"
          + "Project"     = "Ollama"
          + "Region"      = "westeurope"
        }
      + virtual_machine_id                                     = (known after apply)
      + vm_agent_platform_updates_enabled                      = false

      + admin_ssh_key {
          + public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC4oE0vAOyvOdGajSoA8DGW8MdVm3BJkH4HVArT1eFu53arIfZxeoNysWL+5fIk1pSa1pTyU1uwPS6GUFFGvp3dxnUu+1CXOu3ymNB9cZuFa09pToL73VG6WUVelNmQ+jxkpEPTvgDk6evPckurNNRDrVLVwA8TxWJFRk1Uc7XuOPlBDTPscjKurVogpBoIK0+Z0aarPqum/Msjs7+Xr9/dHM+8uAQCfgGR1mA0t9Ah+vPMpDe2RV550+Wf7Q/mTc3imkWgCozuCqYooORXAx1HUZJdm/C1ZlAduOj1m+8u5gAJEWLu8Py7LqFV1hPXNFN2A+ZtmCKXusHxSI2kiCyWOHLmNqhT9l7RRSxF/kfBpcRrXrWYhe1tLKX5DQXOjWEIuohYNGkrETY35gNKYkivI9AP6EJJl4jx2wdH6mPkn8aE8sscZotyn90HmdgLDYQIx0zUT+rlczek+Li6zGmE9sotygTTGjgzTJk+LrKSEX/zdT06/ElW2c3j2X9/UhcN6TGK86bM06//A5NqGgwjBUDLvpe0zfDQJ5zH6Q4mPFr6WPOtzEMLaFCCu8KHhD2ccAWmG8DpH74l31547UeFG64Eni467IYsrJOnyPG06rSBICmXcV2XoKpVccySo2t0KSG9fhRB5wmQbAIAWIXaah635o+wWYHllaE4YZXa4w== kndoni@LHIND-N211680"
          + username   = "azureuser"
        }

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = (known after apply)
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }

      + source_image_reference {
          + offer     = "0001-com-ubuntu-server-jammy"
          + publisher = "Canonical"
          + sku       = "22_04-lts"
          + version   = "latest"
        }

      + termination_notification (known after apply)
    }

  # module.dev_compute.azurerm_linux_virtual_machine.private_vm[1] will be created
  + resource "azurerm_linux_virtual_machine" "private_vm" {
      + admin_username                                         = "azureuser"
      + allow_extension_operations                             = true
      + bypass_platform_safety_checks_on_user_schedule_enabled = false
      + computer_name                                          = (known after apply)
      + disable_password_authentication                        = true
      + disk_controller_type                                   = (known after apply)
      + extensions_time_budget                                 = "PT1H30M"
      + id                                                     = (known after apply)
      + location                                               = "westeurope"
      + max_bid_price                                          = -1
      + name                                                   = "dev-privateVm-2"
      + network_interface_ids                                  = (known after apply)
      + patch_assessment_mode                                  = "ImageDefault"
      + patch_mode                                             = "ImageDefault"
      + platform_fault_domain                                  = -1
      + priority                                               = "Regular"
      + private_ip_address                                     = (known after apply)
      + private_ip_addresses                                   = (known after apply)
      + provision_vm_agent                                     = true
      + public_ip_address                                      = (known after apply)
      + public_ip_addresses                                    = (known after apply)
      + resource_group_name                                    = "RG_OLLAMA_DEV_VNET"
      + size                                                   = "Standard_DS1_v2"
      + tags                                                   = {
          + "Environment" = "dev"
          + "Owner"       = "kristindoni"
          + "Project"     = "Ollama"
          + "Region"      = "westeurope"
        }
      + virtual_machine_id                                     = (known after apply)
      + vm_agent_platform_updates_enabled                      = false

      + admin_ssh_key {
          + public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC4oE0vAOyvOdGajSoA8DGW8MdVm3BJkH4HVArT1eFu53arIfZxeoNysWL+5fIk1pSa1pTyU1uwPS6GUFFGvp3dxnUu+1CXOu3ymNB9cZuFa09pToL73VG6WUVelNmQ+jxkpEPTvgDk6evPckurNNRDrVLVwA8TxWJFRk1Uc7XuOPlBDTPscjKurVogpBoIK0+Z0aarPqum/Msjs7+Xr9/dHM+8uAQCfgGR1mA0t9Ah+vPMpDe2RV550+Wf7Q/mTc3imkWgCozuCqYooORXAx1HUZJdm/C1ZlAduOj1m+8u5gAJEWLu8Py7LqFV1hPXNFN2A+ZtmCKXusHxSI2kiCyWOHLmNqhT9l7RRSxF/kfBpcRrXrWYhe1tLKX5DQXOjWEIuohYNGkrETY35gNKYkivI9AP6EJJl4jx2wdH6mPkn8aE8sscZotyn90HmdgLDYQIx0zUT+rlczek+Li6zGmE9sotygTTGjgzTJk+LrKSEX/zdT06/ElW2c3j2X9/UhcN6TGK86bM06//A5NqGgwjBUDLvpe0zfDQJ5zH6Q4mPFr6WPOtzEMLaFCCu8KHhD2ccAWmG8DpH74l31547UeFG64Eni467IYsrJOnyPG06rSBICmXcV2XoKpVccySo2t0KSG9fhRB5wmQbAIAWIXaah635o+wWYHllaE4YZXa4w== kndoni@LHIND-N211680"
          + username   = "azureuser"
        }

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = (known after apply)
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }

      + source_image_reference {
          + offer     = "0001-com-ubuntu-server-jammy"
          + publisher = "Canonical"
          + sku       = "22_04-lts"
          + version   = "latest"
        }

      + termination_notification (known after apply)
    }

  # module.dev_compute.azurerm_linux_virtual_machine.public_vm[0] will be created
  + resource "azurerm_linux_virtual_machine" "public_vm" {
      + admin_username                                         = "azureuser"
      + allow_extension_operations                             = true
      + bypass_platform_safety_checks_on_user_schedule_enabled = false
      + computer_name                                          = (known after apply)
      + disable_password_authentication                        = true
      + disk_controller_type                                   = (known after apply)
      + extensions_time_budget                                 = "PT1H30M"
      + id                                                     = (known after apply)
      + location                                               = "westeurope"
      + max_bid_price                                          = -1
      + name                                                   = "dev-publicVm-1"
      + network_interface_ids                                  = (known after apply)
      + patch_assessment_mode                                  = "ImageDefault"
      + patch_mode                                             = "ImageDefault"
      + platform_fault_domain                                  = -1
      + priority                                               = "Regular"
      + private_ip_address                                     = (known after apply)
      + private_ip_addresses                                   = (known after apply)
      + provision_vm_agent                                     = true
      + public_ip_address                                      = (known after apply)
      + public_ip_addresses                                    = (known after apply)
      + resource_group_name                                    = "RG_OLLAMA_DEV_VNET"
      + size                                                   = "Standard_DS1_v2"
      + tags                                                   = {
          + "Environment" = "dev"
          + "Owner"       = "kristindoni"
          + "Project"     = "Ollama"
          + "Region"      = "westeurope"
        }
      + virtual_machine_id                                     = (known after apply)
      + vm_agent_platform_updates_enabled                      = false

      + admin_ssh_key {
          + public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC4oE0vAOyvOdGajSoA8DGW8MdVm3BJkH4HVArT1eFu53arIfZxeoNysWL+5fIk1pSa1pTyU1uwPS6GUFFGvp3dxnUu+1CXOu3ymNB9cZuFa09pToL73VG6WUVelNmQ+jxkpEPTvgDk6evPckurNNRDrVLVwA8TxWJFRk1Uc7XuOPlBDTPscjKurVogpBoIK0+Z0aarPqum/Msjs7+Xr9/dHM+8uAQCfgGR1mA0t9Ah+vPMpDe2RV550+Wf7Q/mTc3imkWgCozuCqYooORXAx1HUZJdm/C1ZlAduOj1m+8u5gAJEWLu8Py7LqFV1hPXNFN2A+ZtmCKXusHxSI2kiCyWOHLmNqhT9l7RRSxF/kfBpcRrXrWYhe1tLKX5DQXOjWEIuohYNGkrETY35gNKYkivI9AP6EJJl4jx2wdH6mPkn8aE8sscZotyn90HmdgLDYQIx0zUT+rlczek+Li6zGmE9sotygTTGjgzTJk+LrKSEX/zdT06/ElW2c3j2X9/UhcN6TGK86bM06//A5NqGgwjBUDLvpe0zfDQJ5zH6Q4mPFr6WPOtzEMLaFCCu8KHhD2ccAWmG8DpH74l31547UeFG64Eni467IYsrJOnyPG06rSBICmXcV2XoKpVccySo2t0KSG9fhRB5wmQbAIAWIXaah635o+wWYHllaE4YZXa4w== kndoni@LHIND-N211680"
          + username   = "azureuser"
        }

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = (known after apply)
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }

      + source_image_reference {
          + offer     = "0001-com-ubuntu-server-jammy"
          + publisher = "Canonical"
          + sku       = "22_04-lts"
          + version   = "latest"
        }

      + termination_notification (known after apply)
    }

  # module.dev_compute.azurerm_network_interface.private_nic[0] will be created
  + resource "azurerm_network_interface" "private_nic" {
      + applied_dns_servers           = (known after apply)
      + dns_servers                   = (known after apply)
      + enable_accelerated_networking = false
      + enable_ip_forwarding          = false
      + id                            = (known after apply)
      + internal_dns_name_label       = (known after apply)
      + internal_domain_name_suffix   = (known after apply)
      + location                      = "westeurope"
      + mac_address                   = (known after apply)
      + name                          = "dev-private-nic-1"
      + private_ip_address            = (known after apply)
      + private_ip_addresses          = (known after apply)
      + resource_group_name           = "RG_OLLAMA_DEV_VNET"
      + virtual_machine_id            = (known after apply)

      + ip_configuration {
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + name                                               = "dev-private_config_name-1"
          + primary                                            = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = "Dynamic"
          + private_ip_address_version                         = "IPv4"
          + subnet_id                                          = (known after apply)
        }
    }

  # module.dev_compute.azurerm_network_interface.private_nic[1] will be created
  + resource "azurerm_network_interface" "private_nic" {
      + applied_dns_servers           = (known after apply)
      + dns_servers                   = (known after apply)
      + enable_accelerated_networking = false
      + enable_ip_forwarding          = false
      + id                            = (known after apply)
      + internal_dns_name_label       = (known after apply)
      + internal_domain_name_suffix   = (known after apply)
      + location                      = "westeurope"
      + mac_address                   = (known after apply)
      + name                          = "dev-private-nic-2"
      + private_ip_address            = (known after apply)
      + private_ip_addresses          = (known after apply)
      + resource_group_name           = "RG_OLLAMA_DEV_VNET"
      + virtual_machine_id            = (known after apply)

      + ip_configuration {
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + name                                               = "dev-private_config_name-2"
          + primary                                            = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = "Dynamic"
          + private_ip_address_version                         = "IPv4"
          + subnet_id                                          = (known after apply)
        }
    }

  # module.dev_compute.azurerm_network_interface.public_nic[0] will be created
  + resource "azurerm_network_interface" "public_nic" {
      + applied_dns_servers           = (known after apply)
      + dns_servers                   = (known after apply)
      + enable_accelerated_networking = false
      + enable_ip_forwarding          = false
      + id                            = (known after apply)
      + internal_dns_name_label       = (known after apply)
      + internal_domain_name_suffix   = (known after apply)
      + location                      = "westeurope"
      + mac_address                   = (known after apply)
      + name                          = "dev-public-nic-1"
      + private_ip_address            = (known after apply)
      + private_ip_addresses          = (known after apply)
      + resource_group_name           = "RG_OLLAMA_DEV_VNET"
      + virtual_machine_id            = (known after apply)

      + ip_configuration {
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + name                                               = "dev-public_config_name-1"
          + primary                                            = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = "Dynamic"
          + private_ip_address_version                         = "IPv4"
          + public_ip_address_id                               = (known after apply)
          + subnet_id                                          = (known after apply)
        }
    }

  # module.dev_compute.azurerm_public_ip.public_ip[0] will be created
  + resource "azurerm_public_ip" "public_ip" {
      + allocation_method       = "Static"
      + ddos_protection_mode    = "VirtualNetworkInherited"
      + fqdn                    = (known after apply)
      + id                      = (known after apply)
      + idle_timeout_in_minutes = 4
      + ip_address              = (known after apply)
      + ip_version              = "IPv4"
      + location                = "westeurope"
      + name                    = "dev-public-ip-1"
      + resource_group_name     = "RG_OLLAMA_DEV_VNET"
      + sku                     = "Basic"
      + sku_tier                = "Regional"
    }

  # module.dev_nsg_1.azurerm_network_security_group.nsg will be created
  + resource "azurerm_network_security_group" "nsg" {
      + id                  = (known after apply)
      + location            = "westeurope"
      + name                = "nsg1"
      + resource_group_name = "RG_OLLAMA_DEV_VNET"
      + security_rule       = [
          + {
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + destination_application_security_group_ids = []
              + destination_port_range                     = "22"
              + destination_port_ranges                    = []
              + direction                                  = "Inbound"
              + name                                       = "Allow22"
              + priority                                   = 110
              + protocol                                   = "*"
              + source_address_prefix                      = "*"
              + source_address_prefixes                    = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
          + {
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + destination_application_security_group_ids = []
              + destination_port_range                     = "3389"
              + destination_port_ranges                    = []
              + direction                                  = "Inbound"
              + name                                       = "AllowSSH"
              + priority                                   = 100
              + protocol                                   = "*"
              + source_address_prefix                      = "*"
              + source_address_prefixes                    = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
          + {
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + destination_application_security_group_ids = []
              + destination_port_range                     = "80"
              + destination_port_ranges                    = []
              + direction                                  = "Inbound"
              + name                                       = "Allow80"
              + priority                                   = 120
              + protocol                                   = "*"
              + source_address_prefix                      = "*"
              + source_address_prefixes                    = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
      + tags                = {
          + "Environment" = "dev"
          + "Owner"       = "kristindoni"
          + "Project"     = "Ollama"
          + "Region"      = "westeurope"
        }
    }

  # module.dev_nsg_1.azurerm_subnet_network_security_group_association.Mathan_Nsg_Subnet["private-subnet"] will be created
  + resource "azurerm_subnet_network_security_group_association" "Mathan_Nsg_Subnet" {
      + id                        = (known after apply)
      + network_security_group_id = (known after apply)
      + subnet_id                 = (known after apply)
    }

  # module.dev_nsg_1.azurerm_subnet_network_security_group_association.Mathan_Nsg_Subnet["public-subnet"] will be created
  + resource "azurerm_subnet_network_security_group_association" "Mathan_Nsg_Subnet" {
      + id                        = (known after apply)
      + network_security_group_id = (known after apply)
      + subnet_id                 = (known after apply)
    }

  # module.dev_vnet_1.azurerm_resource_group.resource_group will be created
  + resource "azurerm_resource_group" "resource_group" {
      + id       = (known after apply)
      + location = "westeurope"
      + name     = "RG_OLLAMA_DEV_VNET"
      + tags     = {
          + "env"   = "dev"
          + "name"  = "dev-resource-group"
          + "owner" = "Kristi"
        }
    }

  # module.dev_vnet_1.azurerm_subnet.subnet["private-subnet"] will be created
  + resource "azurerm_subnet" "subnet" {
      + address_prefixes                               = [
          + "10.0.20.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = (known after apply)
      + enforce_private_link_service_network_policies  = (known after apply)
      + id                                             = (known after apply)
      + name                                           = "private-subnet"
      + private_endpoint_network_policies_enabled      = (known after apply)
      + private_link_service_network_policies_enabled  = (known after apply)
      + resource_group_name                            = "RG_OLLAMA_DEV_VNET"
      + virtual_network_name                           = "virtual_network1"
    }

  # module.dev_vnet_1.azurerm_subnet.subnet["public-subnet"] will be created
  + resource "azurerm_subnet" "subnet" {
      + address_prefixes                               = [
          + "10.0.10.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = (known after apply)
      + enforce_private_link_service_network_policies  = (known after apply)
      + id                                             = (known after apply)
      + name                                           = "public-subnet"
      + private_endpoint_network_policies_enabled      = (known after apply)
      + private_link_service_network_policies_enabled  = (known after apply)
      + resource_group_name                            = "RG_OLLAMA_DEV_VNET"
      + virtual_network_name                           = "virtual_network1"
    }

  # module.dev_vnet_1.azurerm_virtual_network.virtual_network will be created
  + resource "azurerm_virtual_network" "virtual_network" {
      + address_space       = [
          + "10.0.0.0/16",
        ]
      + dns_servers         = (known after apply)
      + guid                = (known after apply)
      + id                  = (known after apply)
      + location            = "westeurope"
      + name                = "virtual_network1"
      + resource_group_name = "RG_OLLAMA_DEV_VNET"
      + subnet              = (known after apply)
      + tags                = {
          + "Environment" = "dev"
          + "Owner"       = "kristindoni"
          + "Project"     = "Ollama"
          + "Region"      = "westeurope"
        }
    }

  # module.lb.azurerm_lb.lb will be created
  + resource "azurerm_lb" "lb" {
      + id                   = (known after apply)
      + location             = "westeurope"
      + name                 = "dev-lb"
      + private_ip_address   = (known after apply)
      + private_ip_addresses = (known after apply)
      + resource_group_name  = "RG_OLLAMA_DEV_VNET"
      + sku                  = "Standard"
      + sku_tier             = "Regional"
      + tags                 = {
          + "Environment" = "dev"
          + "Owner"       = "kristindoni"
          + "Project"     = "Ollama"
          + "Region"      = "westeurope"
        }

      + frontend_ip_configuration {
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + id                                                 = (known after apply)
          + inbound_nat_rules                                  = (known after apply)
          + load_balancer_rules                                = (known after apply)
          + name                                               = "dev-fip-config"
          + outbound_rules                                     = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = (known after apply)
          + private_ip_address_version                         = (known after apply)
          + public_ip_address_id                               = (known after apply)
          + public_ip_prefix_id                                = (known after apply)
          + subnet_id                                          = (known after apply)
        }
    }

  # module.lb.azurerm_lb_backend_address_pool.lb_backend will be created
  + resource "azurerm_lb_backend_address_pool" "lb_backend" {
      + backend_ip_configurations = (known after apply)
      + id                        = (known after apply)
      + inbound_nat_rules         = (known after apply)
      + load_balancing_rules      = (known after apply)
      + loadbalancer_id           = (known after apply)
      + name                      = "dev-backend-pool"
      + outbound_rules            = (known after apply)
    }

  # module.lb.azurerm_lb_backend_address_pool_address.pool_address[0] will be created
  + resource "azurerm_lb_backend_address_pool_address" "pool_address" {
      + backend_address_pool_id       = (known after apply)
      + id                            = (known after apply)
      + inbound_nat_rule_port_mapping = (known after apply)
      + ip_address                    = (known after apply)
      + name                          = "dev-pool-address-1"
      + virtual_network_id            = (known after apply)
    }

  # module.lb.azurerm_lb_rule.lb_rule will be created
  + resource "azurerm_lb_rule" "lb_rule" {
      + backend_address_pool_ids       = (known after apply)
      + backend_port                   = 80
      + disable_outbound_snat          = false
      + enable_floating_ip             = false
      + frontend_ip_configuration_id   = (known after apply)
      + frontend_ip_configuration_name = "dev-fip-config"
      + frontend_port                  = 80
      + id                             = (known after apply)
      + idle_timeout_in_minutes        = 4
      + load_distribution              = "Default"
      + loadbalancer_id                = (known after apply)
      + name                           = "dev_lb_rule"
      + probe_id                       = (known after apply)
      + protocol                       = "Tcp"
    }

  # module.lb.azurerm_public_ip.lb_public_ip will be created
  + resource "azurerm_public_ip" "lb_public_ip" {
      + allocation_method       = "Static"
      + ddos_protection_mode    = "VirtualNetworkInherited"
      + fqdn                    = (known after apply)
      + id                      = (known after apply)
      + idle_timeout_in_minutes = 4
      + ip_address              = (known after apply)
      + ip_version              = "IPv4"
      + location                = "westeurope"
      + name                    = "dev-lb-publiicip"
      + resource_group_name     = "RG_OLLAMA_DEV_VNET"
      + sku                     = "Standard"
      + sku_tier                = "Regional"
      + tags                    = {
          + "Environment" = "dev"
          + "Owner"       = "kristindoni"
          + "Project"     = "Ollama"
          + "Region"      = "westeurope"
        }
    }

Plan: 19 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────

Saved the plan to: tfplan