resource "azurerm_public_ip" "mytestpublicip" {
  name                = var.ipaddressname
  resource_group_name = azurerm_resource_group.mytest-rg.name
  location            = var.location
  allocation_method   = "Dynamic"

  tags = var.tags
}