variable "resource_group_region" {
  description = "Azure Resource Group region to build into"
  type        = string
}

variable "resource_group_name" {
  description = "Azure Resource Group name"
  type        = string
}

variable "vnet_name" {
  description = "Azure vnet name"
  type        = string
}

variable "vnet_address_space" {
  description = "Azure vnet name"
  type        = string
}

/*
variable "subnets" {
  description = "subnets for terraform_vnet"
  type        = map(string)
  default = {
    "internal_subnet_name" = "internal_subnet"
    "internal_subnet_prefix" = "10.0.2.0/24"    
    "external_subnet_name" = "external_subnet"
    "internal_subnet_prefix" = "10.0.1.0/24"
  }
}

variable "subnet_prefixes" {
  description = "The address prefixes to be used for subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
*/
variable "subnet_names" {
  description = "A list of subnet names in a Virtual Network"
  type        = list(string)
  default     = ["external", "internal"]
}
/*
variable "internal_subnet_name" {
  description = "Azure internal subnet name"
  type        = string
}

variable "internal_subnet_address_prefixes" {
  description = "Azure internal subnet address prefixes"
  type        = string
}

variable "external_subnet_name" {
  description = "Azure external subnet name"
  type        = string
}

variable "external_subnet_address_prefixes" {
  description = "Azure external subnet address prefixes"
  type        = string
}
*/
variable "ubuntu_public_ip_address_name" {
  description = "Azure public IP for Ubuntu VM"
  type        = string
}

variable "ubuntu_public_ip_allocation_method" {
  description = "Azure public IP allocation method for Ubuntu VM"
  type        = string
}

variable "ubuntu_external_interface_name" {
  description = "Azure external interface name for Ubuntu VM"
  type        = string
}

variable "ubuntu_ip_configuration_name" {
  description = "Azure IP configuration for Ubuntu VM"
  type        = string
}

variable "ubuntu_private_ip_address_allocation" {
  description = "Azure IP address allocation for Ubuntu VM"
  type        = string
}
