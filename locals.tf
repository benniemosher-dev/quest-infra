locals {
  domain-name     = "benniemosher.dev" # TODO: terraform.workspace == "prod" ? "benniemosher.com" : "benniemosher.dev"
  sub-domain-name = "quest"            # TODO: terraform.workspace == "prod" ? "quest" : "${terraform.workspace}-quest"
  project-name    = "benniemosher-rearc-quest"
}
