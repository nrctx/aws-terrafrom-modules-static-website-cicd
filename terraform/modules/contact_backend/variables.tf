variable "admin_email" {
  description = "The email address that will receive the contact form messages (must be verified in SES)."
  type        = string
}

variable "lambda_zip_path" {
  description = "The local path to the zipped Python backend code."
  type        = string
}
