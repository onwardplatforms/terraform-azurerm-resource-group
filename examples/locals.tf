locals {
  name_suffix = "${var.github_run_id}-${var.github_run_number}"
  tags = merge(
    var.tags,
    {
      "GITHUB SHA"      = var.github_sha
      "GITHUB REF NAME" = var.github_ref_name
    }
  )
}