resource "azurerm_network_interface" "ubuntu_external_interface" {
  name                = var.ubuntu_external_interface_name
  location            = azurerm_resource_group.terraform_rg.location
  resource_group_name = azurerm_resource_group.terraform_rg.name
  ip_configuration {

    name                          = var.ubuntu_ip_configuration_name
    subnet_id                     = azurerm_subnet.terraform_subnets[0].id
    private_ip_address_allocation = var.ubuntu_private_ip_address_allocation
    public_ip_address_id          = azurerm_public_ip.ubuntu_public_ip_address.id
  }
}
