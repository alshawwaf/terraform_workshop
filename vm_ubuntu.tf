resource "azurerm_linux_virtual_machine" "ubuntu_vm" {
  name                            = "ubuntu-vm"
  resource_group_name             = azurerm_resource_group.terraform_rg.name
  location                        = azurerm_resource_group.terraform_rg.location
  size                            = "Standard_D2s_v3"
  admin_username                  = "adminuser"
  admin_password                  = "P@ssw0rd1234!"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.ubuntu_external_interface.id
  ]

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  custom_data = base64encode(data.template_file.userdata_setup.rendered)

}

data "template_file" "userdata_setup" {
  template = file("ubuntu_config.sh")
}
