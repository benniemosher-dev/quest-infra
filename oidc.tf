# module "terraform-github-oidc" {
#   source = "../terraform-aws-oidc"
#   # source = "github.com/benniemosher-dev/terraform-aws-oidc?ref=v0.1.0"

#   config = {
#     github-organisation = "benniemosher-dev"

#     github-repositories = [
#       "quest-infra"
#     ]

#     name = "terraform-github-oidc"

#     oidc-provider-client-list = [
#       "https://github.com/${var.config.org-name}"
#     ]

#     oidc-provider-thumbprint-list = [
#       "6938fd4d98bab03faadb97b34396831e3780aea1"
#     ]

#     oidc-provider-url = "https://token.actions.githubusercontent.com"
#   }
# }

# resource "aws_iam_role_policy" "terraform-github-oidc" {
#   # count = local.is_pr ? 0 : 1
#   name = "terraform-github-oidc"
#   role = module.terraform-github-oidc.iam-role-name

#   policy = data.aws_iam_policy_document.terraform-github-oidc.json
# }

# data "aws_iam_policy_document" "terraform-github-oidc" {
#   #tfsec:ignore:aws-iam-no-policy-wildcards
#   statement {
#     sid = "S3GetObjectPutObject"

#     actions = [
#       "s3:GetObject",
#       "s3:PutObject",
#     ]

#     resources = compact([
#       "*",
#     ])
#   }
# }
