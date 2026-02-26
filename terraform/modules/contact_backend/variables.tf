variable "admin_email" {
  description = "The email address that will receive the contact form messages (must be verified in SES)."
  type        = string
}

variable "lambda_zip_path" {
  description = "The local path to the zipped Python backend code."
  type        = string
}
variable "contact_api_stage" {
  description = "The name of the API stage"
  type        = string
  default     = "$default"
}

variable "domain_name" {
  type        = string
  description = "The domain name for SES (e.g., giovcloud.xyz)"
}