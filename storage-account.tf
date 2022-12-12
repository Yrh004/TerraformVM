resource "random_id" "randomId" {
    keepers = {
        resource_group = azurerm_resource_group.mytest-rg.name
    }
    byte_length = 8
}

resource "azurerm_storage_account" "mytest-sa" {
  name                     = "diag${random_id.randomId.hex}"
  resource_group_name      = azurerm_resource_group.mytest-rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}