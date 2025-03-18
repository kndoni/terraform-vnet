module "dev_vnet_1" {
  source = "../../modules/vnet"

  environment         = var.environment
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  vnet_address_prefix = var.vnet_address_prefix
  subnets             = var.subnets
  resource_tags       = var.resource_tags
}

module "dev_nsg_1" {
  source = "../../modules/nsg"

  nsg_name = var.nsg_name
  nsg_rules = [
    {
      name                       = "AllowSSH"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "3389"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    {
      name                       = "Allow22"
      priority                   = 110
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    {
      name                       = "Allow80"
      priority                   = 120
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "80"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
  resource_group_name = module.dev_vnet_1.resource_group
  location            = module.dev_vnet_1.location
  subnet_id           = module.dev_vnet_1.subnet_id
  resource_tags = var.resource_tags
}

module "dev_compute" {
  source              = "../../modules/vm"
  environment         = module.dev_vnet_1.environment
  resource_group_name = module.dev_vnet_1.resource_group
  location            = module.dev_vnet_1.location
  subnet_id           = module.dev_vnet_1.subnet_id
  public_vm_size      = var.public_vm_size
  private_vm_size     = var.private_vm_size
  public_key_path     = "../../modules/vm/publickey.pub"
  resource_tags = var.resource_tags
}

module "lb" {
  source              = "../../modules/loadBalancer"
  environment         = module.dev_vnet_1.environment
  resource_group_name = module.dev_vnet_1.resource_group
  location            = module.dev_vnet_1.location
  nic                 = module.dev_compute.public_nic
  virtual_network_id  = module.dev_vnet_1.virtual_network_id
  resource_tags       = var.resource_tags
  sku                 = var.sku
}