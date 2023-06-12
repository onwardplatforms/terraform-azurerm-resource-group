output "self" {
  value       = azurerm_resource_group.this
  description = <<EOF
  All resource group metadata. Available attributes can be found at:
  https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
  EOF
}