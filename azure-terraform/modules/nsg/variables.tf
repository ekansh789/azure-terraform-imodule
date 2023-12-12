variable "nsg_name" {
  type        = string
  default = "the name of the network security group"
}

variable "nsg_location" {
  type        = string
  default = "southeast Asia"
}
variable "nsg_resource_group_name" {
  type        = string
  default = "sa1_test_eic_TejalDave"
}

variable "nsg_rules" {
  type = list(object({
    name                       = string
    priority                   = number
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  description = "the list of rules for the network security group"

}
