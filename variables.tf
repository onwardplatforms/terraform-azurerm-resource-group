variable "name" {
  description = "The name of the resource group. Must be unique on your Azure subscription."
  type        = string
}

variable "location" {
  description = "The location where the resource group should be created."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}