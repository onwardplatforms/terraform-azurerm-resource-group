variable "name" {
  type        = string
  description = "The name of the resource group."

  validation {
    condition     = can(regex("^[a-z0-9-]{1,90}[a-z0-9]$", var.name))
    error_message = "The name must be 1-90 characters long and contain only alphanumeric characters or hyphens."
  }
}

variable "location" {
  type        = string
  description = "The location where the resource group will be created."
  default     = "eastus"
}

variable "lock_level" {
  type        = string
  description = "The level of the lock. Must be either CanNotDelete or ReadOnly. If no value is provided, the resource will not be locked."
  default     = null

  validation {
    condition     = can(regex("^(CanNotDelete|ReadOnly)$", var.lock_level)) || var.lock_level == null
    error_message = "The lock_level must be either CanNotDelete or ReadOnly."
  }
}

variable "managed_by" {
  type        = string
  description = "The ID of the resource that manages this resource group."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
