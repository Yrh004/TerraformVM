resource "azurerm_network_interface" "mytest-nic" {
  name                = var.nicname
  location            = var.location
  resource_group_name = azurerm_resource_group.mytest-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.mytestsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.mytestpublicip.id
  }

  tags = var.tags
}

resource "azurerm_network_interface_security_group_association" "mytest-nisga" {
  network_interface_id      = azurerm_network_interface.mytest-nic.id
  network_security_group_id = azurerm_network_security_group.mytest-sg.id
}
