<!-- BEGIN_TF_DOCS -->

# Azure Resource Group

## Purpose

This Terraform modules create an Azure Resource Group.  A resource group is a container that holds related resources for an Azure solution. The resource group can include all the resources for the solution, or only those resources that you want to manage as a group.

## Learn

To learn more about this resource, [read the official Microsoft documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal).

## Example

```hcl
module "resource_group" {
  source = "../"

  name     = "rg-${local.name_suffix}"
  location = "eastus"

  tags = local.tags
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| location | The location where the resource group should be created. | `string` | n/a | yes |
| name | The name of the resource group. Must be unique on your Azure subscription. | `string` | n/a | yes |
| tags | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| this | All resource group metadata. Available attributes can be found at:<br>  https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group |
<!-- END_TF_DOCS -->