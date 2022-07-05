
output "ubuntu_public_ip_address" {
  value = azurerm_public_ip.ubuntu_public_ip_address.ip_address
}

/*
data "azurerm_public_ips" "public_ips" {
  resource_group_name = "terraform_rg"
  attachment_status   = "Attached"
}

output "all_attached_public_ip_address" {
  value = data.azurerm_public_ips.public_ips.public_ips[*].ip_address
}
*/
