# module "oidc-github" {
#   source = "../terraform-aws-oidc"
#   # source = "github.com/benniemosher-dev/terraform-aws-oidc?ref=v0.1.0"

#   config = {
#     github-organisation = "benniemosher-dev"
#     github-repositories = [
#       "quest-infra"
#     ]
#     oidc-provider-client-list = [
#       "https://github.com/${var.config.org-name}"
#     ]
#     oidc-provider-thumbprint-list = [
#       "6938fd4d98bab03faadb97b34396831e3780aea1"
#     ]
#     oidc-provider-url = "https://token.actions.githubusercontent.com"
#     name              = "github-oidc-provider"

#     # attach-admin-policy     = optional(bool, false)
#     # attach-read-only-policy = optional(bool, true)
#     # create-oidc-provider    = optional(bool, true)
#     # enabled                 = optional(bool, true)
#     # force-detach-policies   = optional(bool, false)
#     # github-repositories     = optional(list(string), [])
#     # github-organisation     = string
#     # github-thumbprint       = optional(string, "6938fd4d98bab03faadb97b34396831e3780aea1")
#     # iam-role-name           = optional(string, "github")
#     # iam-role-path           = optional(string, "/")
#     # iam-role-policy-arns    = optional(list(string), [])
#     # max-session-duration    = optional(number, 3600)
#   }
# }
