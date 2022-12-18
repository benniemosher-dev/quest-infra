module "certificate" {
  # source = "./modules/aws-acm"
  source = "github.com/benniemosher-dev/terraform-aws-acm?ref=v0.1.0"

  config = {
    certificate-domain = "${local.sub-domain-name}.${local.domain-name}"
    root-domain-name   = local.domain-name
    subject-alternative-names = [
      "*.${local.domain-name}"
    ]
  }
}
