variable "aws-config" {
  description = "The config to connect Terraform to AWS."
  type = object({
    profile = optional(string, null)
    region  = optional(string, "us-east-1")
  })
}

variable "cloudflare-config" {
  description = "The config to connect Terraform to Cloudflare."
  type = object({
    account-id = optional(string, null)
    api-token  = string
    cidrs      = list(string)
  })
}

variable "config" {
  description = "The config for your organization in Github."
  type = object({
    org-name     = string
    project-name = string
  })
}

variable "tfcloud-config" {
  description = "The config for connecting to TFCloud."
  type = object({
    token = string
  })
}
