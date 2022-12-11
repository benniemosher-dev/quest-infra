# TODO: Move the Load Balancer to internal
# tfsec:ignore:aws-elb-alb-not-public tfsec:ignore:aws-ec2-no-public-ingress-sgr
module "load-balancer" {
  # source = "../../../benniemosher-dev/terraform-aws-loadbalancer"
  source = "github.com/benniemosher-dev/terraform-aws-loadbalancer?ref=v0.2.0"

  config = {
    allowed-ingress-cidrs = var.cloudflare-config.cidrs
    certificate           = module.certificate.arn
    cluster-name          = local.project-name
    vpc                   = module.network.vpc
    subnets               = module.network.subnets
  }
}
