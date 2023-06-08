module "resource_group" {
  source = "../"

  name     = "rg-${var.github_run_id}"
  location = "eastus"
}