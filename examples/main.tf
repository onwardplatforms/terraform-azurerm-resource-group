# This script provides an implementation pattern for this module.

module "resource_group" {
  source = "../"

  name     = "rg-${local.name_suffix}"
  location = "eastus"

  tags = local.tags
}
