# This resource block defines an Azure Resource Group.
resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location
  managed_by = var.managed_by

  tags = var.tags
}

# Creates an Azure management lock for the resource group.
# The lock can be used to prevent accidental deletion or modification of the resource group.
resource "azurerm_management_lock" "this" {
  count      = var.lock_level != null ? 1 : 0

  name       = "${var.name}-${lower(var.lock_level)}-lock"
  scope      = azurerm_resource_group.this.id
  lock_level = var.lock_level
}