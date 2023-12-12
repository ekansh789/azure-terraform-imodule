# Dedine the input variables for yhe VNET module

variable "vnet_name" {
  type        = string
  description = "the name of virtual network"
}

variable "vnet_location" {
  type    = string
  default = "southeast Asia"
}

variable "vnet_resource_group_name" {
  type    = string
  default = ""
}

variable "vnet_address_space" {
  type        = string
  description = "the address space for virtual network"
}

variable "subnet_name" {
  type        = string
  description = "The address prefix for the subnet"
}
 variable "subnet_address_prefix" {
  type = list(string)
  description = "subnet prefix"
 }