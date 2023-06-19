locals {
  name_suffix = "${var.github_run_id}-${var.github_run_number}"
  tags = merge(
    var.tags,
    {
      "github sha"        = var.github_sha
      "github ref name"   = var.github_ref_name
      "github actor"      = var.github_actor
      "github repository" = var.github_repository
      "environment"       = var.environment
    }
  )
}
