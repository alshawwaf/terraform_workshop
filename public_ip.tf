resource "azurerm_public_ip" "ubuntu_public_ip_address" {
  name                = var.ubuntu_public_ip_address_name
  location            = azurerm_resource_group.terraform_rg.location
  resource_group_name = azurerm_resource_group.terraform_rg.name
  allocation_method   = var.ubuntu_public_ip_allocation_method
}

