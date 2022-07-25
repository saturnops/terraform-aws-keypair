## IAM permission Required to run this module

- AmazonEC2FullAccess
- AmazonSSMFullAccess
- AmazonVPCFullAccess

# AWS EC2 Keypair

Terraform module which creates EC2 key pair on AWS.

## Usage Example

```hcl
module "key_pair" {
  source = "git::https://{GIT_USER}:{GIT_TOKEN}@gitlab.com/saturnops/sal/terraform/aws/ec2-keypair.git?ref=dev"

  region        = var.region
  environment   = var.environment
  key_name      = var.key_name
  ssm_parameter = var.ssm_parameter
}

```



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.21 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 3.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.23.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_key_pair"></a> [key\_pair](#module\_key\_pair) | terraform-aws-modules/key-pair/aws | 1.0.1 |

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.ssm_ec2_keypair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [tls_private_key.aws_keypair](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment identifier for the key pair | `string` | `"dev"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name for the key pair to be generated | `string` | `"test-key"` | no |
| <a name="input_region"></a> [region](#input\_region) | Specify the region in which key needs to be generate | `string` | `"us-east-2"` | no |
| <a name="input_ssm_parameter_path"></a> [ssm\_parameter\_path](#input\_ssm\_parameter\_path) | The name of the ssm parameter for storing the keypair | `string` | `"/test/ssm"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_pair_name"></a> [key\_pair\_name](#output\_key\_pair\_name) | The key pair name. |
| <a name="output_ssm_parameter_arn"></a> [ssm\_parameter\_arn](#output\_ssm\_parameter\_arn) | The key pair ARN. |
<!-- END_TF_DOCS -->
