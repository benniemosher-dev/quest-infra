# TODO: Remove this and fix error
# tfsec:ignore:aws-ec2-no-default-vpc
module "network" {
  # source = "./modules/aws-network"
  source = "github.com/benniemosher-dev/terraform-aws-network?ref=v0.1.0"

  config = {
    kms-key = module.encryption-key.arn
  }
}
