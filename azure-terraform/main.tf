module "nsg" {
  source   = "./modules/nsg"
  nsg_name = "nsg"
  nsg_rules = [
    {
      name                       = "SSH"
      priority                   = 100
      direction                  = "inbound"
      access                     = "Allow"
      protocol                   = "TCP"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    {
      name                       = "HTTP"
      priority                   = 101
      direction                  = "inbound"
      access                     = "Allow"
      protocol                   = "TCP"
      source_port_range          = "*"
      destination_port_range     = "80"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
}


module "vnet" {
  source    = "./modules/nsg"
  vnet_name = "my-vnet"
}




module "vm" {
  source  = "./modules/vm"
  vm_name = "ubuntu-server"

}



