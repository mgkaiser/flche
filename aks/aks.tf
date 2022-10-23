locals {
	aksName = "${format("%s-%s-aks-%s", var.regionName, var.resourceGroupRoot, var.environment)}"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = local.aksName
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v5"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = local.tags
}