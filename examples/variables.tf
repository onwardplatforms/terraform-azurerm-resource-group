variable "github_run_id" {
  description = "A unique number for each workflow run within a repository. This number does not change if you re-run the workflow run. For example, 1658821493."
  type        = string
}

variable "github_run_number" {
  description = "A unique number for each run of a particular workflow in a repository. This number begins at 1 for the workflow's first run, and increments with each new run. This number does not change if you re-run the workflow run. For example, 3."
  type        = string
}

variable "github_sha" {
  description = "The commit SHA that triggered the workflow. The value of this commit SHA depends on the event that triggered the workflow. For more information, see 'Events that trigger workflows.' For example, ffac537e6cbbf934b08745a378932722df287a53."
  type        = string
}

variable "github_ref_name" {
  description = "The short ref name of the branch or tag that triggered the workflow run. This value matches the branch or tag name shown on GitHub. For example, feature-branch-1."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
