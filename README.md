<!-- BEGIN_TF_DOCS -->

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