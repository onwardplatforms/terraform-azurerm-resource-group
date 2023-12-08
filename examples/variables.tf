variable "github_run_id" {
  type        = string
  description = "The ID of the GitHub run."
  default     = null
}

variable "github_run_number" {
  type        = string
  description = "The number of the GitHub run."
  default     = null
}

variable "github_sha" {
  type        = string
  description = "The SHA of the GitHub commit."
  default     = null
}

variable "github_ref_name" {
    type        = string
    description = "The name of the GitHub ref."
    default     = null
}

variable "github_actor" {
    type        = string
    description = "The name of the GitHub actor."
    default     = null
}

variable "github_repository" {
    type        = string
    description = "The name of the GitHub repository."
    default     = null
}

variable "environment" {
  type        = string
  description = "The environment for the resource."
  default     = "development"

  validation {
    condition     = can(regex("^(development|testing|staging|production)$", var.environment))
    error_message = "The environment must be either development, testing, staging, or production."
  }
}

variable "environment_acronym" {
  type        = string
  description = "The acronym for the environment."
  default     = "dev"

  validation {
    condition     = can(regex("^(dev|tst|stg|prd)$", var.environment_acronym))
    error_message = "The environment acronym must be one of dev, tst, stg, or prd."
  }
}

variable "location" {
  type        = string
  description = "The location where the resource will be created."
  default     = "eastus"
}

variable "location_acronym" {
    type        = string
    description = "The acronym for the location."
    default     = "eus"
}

variable "app_name" {
  type        = string
  description = "The name of the workload or application."
  default = null
}

variable "app_acronym" {
  type        = string
  description = "The acronym for the application."
  default = null

  validation {
    condition     = can(regex("^[a-z0-9]{1,6}$", var.app_acronym))
    error_message = "The application acronym must be 1-6 characters long and contain only alphanumeric characters."
  }
}

variable "tags" {
    type        = map(string)
    description = "A mapping of tags to assign to the resource."
    default     = {}

    # This validation block checks if the tag keys meet the required conditions.
    # The condition ensures that the tag keys either contain only lowercase alpha characters or underscores,
    # or the tags map is empty.
    validation {
        condition     = length(keys(var.tags)) == 0 || alltrue([for k in keys(var.tags) : can(regex("^[a-z_]+$", k))])
        error_message = "Tag keys must contain only lowercase alpha characters or underscores, or tags must be an empty map."
    }
}