variable "location" {
  description = "Azure region allowed by the student subscription policy."
  type        = string
  default     = "francecentral"
}

variable "project_name" {
  description = "Base project name used for Azure resources."
  type        = string
  default     = "container-platform"
}
