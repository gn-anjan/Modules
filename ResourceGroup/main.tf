resource "azurerm_resource_group" "ResourceGroup" {
  name     = var.RSG_NAME
  location = var.RSG_LOCATION

  tags = var.tags
}
