# quest-infra

![CI Terraform](https://github.com/benniemosher-dev/quest-infra/actions/workflows/ci-terraform.yml/badge.svg)

🏔 Infrastructure to support the quest. 🏔

## 📜 Usage:

### To retrieve Cloudflare secrets:

Reach out to [@benniemosher](https://keybase.io/benniemosher) on Keybase and get access to his secrets repo then:

```bash
git clone keybase://team/benniemosher_dev/secrets
ln -s $HOME/Code/benniemosher-dev/secrets/cloudflare.auto.tfvars ./cloudflare.auto.tfvars
```

- To install dependencies needed run:
  ```bash
  brew bundle install
  ```
- To initialize Terraform in this folder:
  ```bash
  task infra:init
  ```
- To update modules and providers in this folder:
  ```bash
  task init -- -upgrade
  ```
- To validate the module in this folder:
  ```bash
  task infra:validate
  ```
- To plan the infrastructure in this folder:
  ```bash
  task infra:plan
  ```
- To plan specific resources of infrastructure in this folder:
  ```bash
  task infra:plan -- -target='cloudflare_record.this'
  ```
- To apply the infrastructure in this folder:
  ```bash
  task infra:apply
  ```
- To apply specific resources of infrastructure in this folder:
  ```bash
  task infra:apply -- -target='cloudflare_record.this'
  ```
- To destroy the infrastructure in this folder:
  ```bash
  task infra:destroy
  ```
- To destroy specific resources of infrastructure in this folder:
  ```bash
  task infra:destroy -- -target='cloudflare_record.this'
  ```

### 🆒 Extras:

- To find all the automation available in this folder:
  ```bash
  task --list-all
  ```
- To estimate the cost of the infrastructure in this folder:
  ```bash
  task infra:cost
  ```
- To update the documentation in this folder:
  ```bash
  task infra:docs
  ```
- To lint the Terraform in this folder:
  ```bash
  task infra:lint
  ```
- To validate security in this folder:
  ```bash
  task infra:sec
  ```

# 💰 Cost

<!-- cost_starts -->
```
Project: benniemosher-dev/quest-infra

 Name                                                                             Monthly Qty  Unit                    Monthly Cost 
                                                                                                                                    
 module.container-registry.aws_ecr_repository.this                                                                                  
 └─ Storage                                                                 Monthly cost depends on usage: $0.10 per GB             
                                                                                                                                    
 module.container-service.module.logs.aws_cloudwatch_log_group.this                                                                 
 ├─ Data ingested                                                           Monthly cost depends on usage: $0.50 per GB             
 ├─ Archival Storage                                                        Monthly cost depends on usage: $0.03 per GB             
 └─ Insights queries data scanned                                           Monthly cost depends on usage: $0.005 per GB            
                                                                                                                                    
 module.encryption-key.aws_kms_key.this                                                                                             
 ├─ Customer master key                                                                     1  months                         $1.00 
 ├─ Requests                                                                Monthly cost depends on usage: $0.03 per 10k requests   
 ├─ ECC GenerateDataKeyPair requests                                        Monthly cost depends on usage: $0.10 per 10k requests   
 └─ RSA GenerateDataKeyPair requests                                        Monthly cost depends on usage: $0.10 per 10k requests   
                                                                                                                                    
 module.load-balancer.aws_alb.this                                                                                                  
 ├─ Network load balancer                                                                 730  hours                         $16.43 
 └─ Load balancer capacity units                                            Monthly cost depends on usage: $4.38 per LCU            
                                                                                                                                    
 module.network.module.default-vpc-flow-logs.aws_cloudwatch_log_group.this                                                          
 ├─ Data ingested                                                           Monthly cost depends on usage: $0.50 per GB             
 ├─ Archival Storage                                                        Monthly cost depends on usage: $0.03 per GB             
 └─ Insights queries data scanned                                           Monthly cost depends on usage: $0.005 per GB            
                                                                                                                                    
 OVERALL TOTAL                                                                                                               $17.43 
──────────────────────────────────
46 cloud resources were detected:
∙ 5 were estimated, 4 of which include usage-based costs, see https://infracost.io/usage-file
∙ 41 were free, rerun with --show-skipped to see details

```
<!-- cost_ends -->

## 📋 Documentation

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.40 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.47.0 |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 3.30.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_certificate"></a> [certificate](#module\_certificate) | github.com/benniemosher-dev/terraform-aws-acm | v0.1.0 |
| <a name="module_container-registry"></a> [container-registry](#module\_container-registry) | github.com/benniemosher-dev/terraform-aws-ecr | v0.1.0 |
| <a name="module_container-service"></a> [container-service](#module\_container-service) | github.com/benniemosher-dev/terraform-aws-ecs | v0.1.0 |
| <a name="module_encryption-key"></a> [encryption-key](#module\_encryption-key) | github.com/benniemosher-dev/terraform-aws-kms | v0.1.0 |
| <a name="module_load-balancer"></a> [load-balancer](#module\_load-balancer) | github.com/benniemosher-dev/terraform-aws-loadbalancer | v0.2.0 |
| <a name="module_network"></a> [network](#module\_network) | github.com/benniemosher-dev/terraform-aws-network | v0.1.0 |
| <a name="module_terraform-github-oidc"></a> [terraform-github-oidc](#module\_terraform-github-oidc) | github.com/benniemosher-dev/terraform-aws-oidc | v0.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role_policy.terraform-github-oidc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [cloudflare_record.certificate](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_record.dns-records](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.cloudwatch-kms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.terraform-github-oidc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [cloudflare_zone.zone](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws-profile"></a> [aws-profile](#input\_aws-profile) | The local AWS profile with access to the service account | `string` | `"benniemosher-quest-sandbox"` | no |
| <a name="input_cloudflare-config"></a> [cloudflare-config](#input\_cloudflare-config) | The config to connect Terraform to Cloudflare | <pre>object({<br>    account-id = optional(string, null)<br>    api-token  = string<br>    cidrs      = list(string)<br>  })</pre> | n/a | yes |
| <a name="input_config"></a> [config](#input\_config) | The config for your organization in Github. | <pre>object({<br>    org-name = string<br>  })</pre> | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The AWS region in which to stand up resources | `string` | `"us-east-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_load-balancer-dns"></a> [load-balancer-dns](#output\_load-balancer-dns) | The Load Balancer DNS name to reach the deployed web app. |
| <a name="output_url"></a> [url](#output\_url) | The URL for the web app. |
<!-- END_TF_DOCS -->
