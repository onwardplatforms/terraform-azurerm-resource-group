# Trigger workflow
module "resource_group" {
  source = "../"

  name     = "rg-${local.name_suffix}"
  location = "eastus"

  tags = local.tags
}
