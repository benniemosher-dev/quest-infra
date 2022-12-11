module "container-service" {
  # source = "./modules/aws-ecs"
  source = "github.com/benniemosher-dev/terraform-aws-ecs?ref=v0.1.0"

  config = {
    cluster-name       = local.project-name
    ecs-security-group = module.load-balancer.ecs-security-group
    environment = [
      {
        name  = "SECRET_WORD"
        value = "Midi-chlorians"
      }
    ]
    kms-key-arn                = module.encryption-key.arn
    image-url                  = module.container-registry.url
    load-balancer-target-group = module.load-balancer.load-balancer-target-group
    subnets                    = module.network.subnets
    vpc                        = module.network.vpc
  }
}
