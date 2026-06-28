resource "azurerm_resource_group" "Test_RSG" {
  name     = var.RSG_NAME
  location = var.RSG_LOCATION

  tags = var.tags
}