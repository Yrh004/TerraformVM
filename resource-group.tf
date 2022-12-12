resource "azurerm_resource_group" "mytest-rg" {
  name     = var.resourceGroupName
  location = var.location
  tags     = var.tags
}