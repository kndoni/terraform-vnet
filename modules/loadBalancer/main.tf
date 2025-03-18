# public ip for the LB
resource "azurerm_public_ip" "lb_public_ip" {
  name                = "${var.environment}-lb-publiicip"
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Static"
  tags = var.resource_tags
}

resource "azurerm_lb" "lb" {
  name                = "${var.environment}-lb"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  # attaching public ip to frontend
  frontend_ip_configuration {
    name                 = "${var.environment}-fip-config"
    public_ip_address_id = azurerm_public_ip.lb_public_ip.id
  }
  tags = var.resource_tags
  depends_on = [var.nic]
}