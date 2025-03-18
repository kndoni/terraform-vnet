environment         = "dev"
resource_group_name = "RG_OLLAMA_DEV_VNET"
location            = "West Europe"
vnet_name           = "virtual_network1"
vnet_address_prefix = "10.0.0.0/16"
subnets = {
  "public-subnet" = {
    name             = "public-subnet"
    address_prefixes = "10.0.10.0/24"
  }
  "private-subnet" = {
    name             = "private-subnet"
    address_prefixes = "10.0.20.0/24"
  }
}
public_vm_size  = "Standard_DS1_v2"
private_vm_size = "Standard_DS1_v2"
nsg_name        = "nsg1"