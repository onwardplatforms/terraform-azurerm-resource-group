locals {
  naming = "${var.app_acronym}-${var.location_acronym}-${var.environment_acronym}"
  tags = merge(
    {
      "environment"       = var.environment
      "app_name"          = var.app_name
      "last_modified"     = formatdate("DD MMM YYYY HH:mmaa", timestamp())
      "github_run_id"     = var.github_run_id
      "github_run_number" = var.github_run_number
      "github_sha"        = var.github_sha
      "github_ref_name"   = var.github_ref_name
      "github_actor"      = var.github_actor
      "github_repository" = var.github_repository
    },
    var.tags
  )
}

resource "random_integer" "this" {
  min = 100000
  max = 999999
}

module "resource_group" {
  source = "../"

  name = "rg-${local.naming}-${random_integer.this.result}"
  location = var.location
}