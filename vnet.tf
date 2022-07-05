resource "azurerm_virtual_network" "terraform_vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.terraform_rg.location
  resource_group_name = azurerm_resource_group.terraform_rg.name
  address_space       = [var.vnet_address_space]
}
