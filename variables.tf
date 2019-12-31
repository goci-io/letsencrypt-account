variable "certificate_email" {
  type        = string
  description = "E-Mail address to use for renewal notifications etc."
}

variable "acme_prod" {
  type        = bool
  default     = true
  description = "Whether to use the staging or production letsencrypt directory"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Whether to create resources or not"
}
