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

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.1 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 3.4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_key_pair"></a> [key\_pair](#module\_key\_pair) | terraform-aws-modules/key-pair/aws | 1.0.1 |

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [tls_private_key.aws_keypair](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment identifier for the key pair | `string` | `"dev"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name for the key pair to be generated | `string` | `"test-key"` | no |
| <a name="input_region"></a> [region](#input\_region) | Specify the region in which key needs to be generate | `string` | `"us-east-2"` | no |
| <a name="input_ssm_parameter"></a> [ssm\_parameter](#input\_ssm\_parameter) | The name of the ssm parameter for storing the keypair | `string` | `"/test/ssm"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output__1_tls_private_key"></a> [\_1\_tls\_private\_key](#output\_\_1\_tls\_private\_key) | Warning!! ! Please Save the private key data for future use ! |
| <a name="output__2_public_key"></a> [\_2\_public\_key](#output\_\_2\_public\_key) | The Public key data |
| <a name="output__3_key_pair_key_name"></a> [\_3\_key\_pair\_key\_name](#output\_\_3\_key\_pair\_key\_name) | The key pair name. |
<!-- END_TF_DOCS -->
