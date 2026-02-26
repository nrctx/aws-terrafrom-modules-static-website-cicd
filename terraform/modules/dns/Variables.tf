variable "domain_name" {
  type        = string
  description = "The root domain name (e.g., giovcloud.xyz)"
}

variable "dkim_tokens" {
  type        = list(string)
  description = "DKIM tokens provided by the SES module"
}

variable "admin_email" {
  type        = string
  description = "Email to receive DMARC reports"
}