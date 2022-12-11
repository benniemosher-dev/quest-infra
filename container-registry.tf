module "container-registry" {
  # source = "./modules/aws-ecr"
  source = "github.com/benniemosher-dev/terraform-aws-ecr?ref=v0.1.0"

  config = {
    repository-name = local.project-name
  }
}
