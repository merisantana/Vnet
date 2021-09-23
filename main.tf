data "azurerm_resource_group" "RG" {
  name = var.resurce_group_name
}

resource "azurerm_virtual_network" "Vnet" {
  name                = var.namevnet
  location            = var.location
  resource_group_name = data.azurerm_resource_group.RG.name 
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}
  
  subnet {
    name           = "subnet1"
    address_prefix = ar.address_prefix
  }

    
