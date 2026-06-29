resource "azurerm_user_assigned_identity" "UserAssigned" {
  location            = var.RSG_LOCATION
  name                = var.IdentityName
  resource_group_name = var.RSG_NAME
}

resource "azurerm_container_registry" "ContainerRegistry" {
  name                = var.RegistryName
  resource_group_name = var.RSG_NAME
  location            = var.RSG_LOCATION
  sku                 = var.SKU
  admin_enabled       = false
  dynamic "georeplications" {
    for_each = var.GeoReplicationLocation
    content {
    location = georeplications.value
    zone_redundancy_enabled = true
    tags                    = {}
    }
  }
  identity {
    type = "UserAssigned"
    identity_ids = [
      azurerm_user_assigned_identity.UserAssigned.id
    ]
  }
}

resource "azurerm_kubernetes_cluster" "AKS" {
  resource_group_name = var.RSG_NAME
  default_node_pool {
    name       = var.NodePoolName
    node_count = var.NodePoolCount
    vm_size    = var.NodePoolSize
  }
  location = var.RSG_LOCATION
  name = var.AKSNAME
  identity {
    type = "UserAssigned"
    identity_ids = [
      azurerm_user_assigned_identity.UserAssigned.id
    ]
  }
  tags = var.tags
}
