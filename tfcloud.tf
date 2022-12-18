data "tfe_workspace" "this" {
  name         = "${var.config.project-name}-infra"
  organization = var.config.org-name
}

resource "tfe_variable" "aws_access_key" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = aws_iam_access_key.tfcloud.id
  category     = "env"
  workspace_id = data.tfe_workspace.this.id
  description  = "Access Key to auth into the AWS account."
}

resource "tfe_variable" "aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = aws_iam_access_key.tfcloud.encrypted_secret
  category     = "env"
  workspace_id = data.tfe_workspace.this.id
  description  = "Secret Access Key to auth into the AWS account."
}
