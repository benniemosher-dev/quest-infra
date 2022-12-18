# TODO: Remove bam from name
module "encryption-key" {
  # source = "./modules/aws-kms"
  source = "github.com/benniemosher-dev/terraform-aws-kms?ref=v0.1.0"

  config = {
    name   = "${local.project-name}-bam"
    policy = data.aws_iam_policy_document.cloudwatch-kms.json
  }
}
