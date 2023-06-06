module "resource_group" {
  source = "../"

  name     = "rg-${random_id.this.b64_std}"
  location = "eastus"
}