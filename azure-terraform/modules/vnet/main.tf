# create a virtual network and a subnet

resource "azurerm_virtual_network" "vnet" {
name = "vnet"
location = var.vnet_location
resource_group_name = var.vnet_resource_group_name
address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "my-subnet-azure " {
name = my-subnet-azure 
resource_group_name = var.vnet_resource_group_name
virtual_network_name = azurerm_virtual_network.vnet.name
address_prefixes = "10.0.0.0/16"
}

#output for subnet id 
 output "subnet_id" {
   value = azurerm_subnet.subnet.id
} 
