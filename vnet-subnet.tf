resource "azurerm_virtual_network" "mytestnetwork" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = azurerm_resource_group.mytest-rg.name
  address_space       = ["10.0.0.0/16"]

  tags = var.tags
}

resource "azurerm_subnet" "mytestsubnet"{
    name = var.subnetname
    resource_group_name = azurerm_resource_group.mytest-rg.name

    virtual_network_name = azurerm_virtual_network.mytestnetwork.name
    
    address_prefixes = ["10.0.2.0/24"]
}

