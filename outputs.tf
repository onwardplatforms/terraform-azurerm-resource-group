output "id" {
  description = "The ID of the resource group."
  value       = azurerm_resource_group.this.id
}

output "name" {
  description = "The name of the resource group."
  value       = azurerm_resource_group.this.name
}

output "location" {
  description = "The location where the resource group was created."
  value       = azurerm_resource_group.this.location
}
