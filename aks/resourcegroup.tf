locals {
	resourceGroupName = "${format("%s-%s-rg-%s", var.regionName, var.resourceGroupRoot, var.environment)}"
}

resource "azurerm_resource_group" "rg" {
  name     = local.resourceGroupName
  location = var.regionCode
  tags     = local.tags
}