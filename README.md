# AWS EC2 Keypair


### [SquareOps Technologies](https://saturnops.com/) Provide end to end solution for all your DevOps needs

<br>

Terraform module which creates EC2 key pair on AWS. The private key will be stored on SSM.

## Usage Example

```hcl
module "key_pair" {
  source = "saturnops/keypair/aws"

  environment   = production
  key_name      = example-key
  ssm_parameter = production-example-key
}
```
Refer [examples](https://github.com/saturnops/terraform-aws-ssh-keypair/tree/main/examples) for all examples.


## Retrieve Private Key

To Retrieve the Private key from SSM:
```bash
aws ssm get-parameter --region=us-east-1 --name "production-example-key" --with-decryption --output text --query Parameter.Value
```

Additionally, to save the private to a file:
```bash
aws ssm get-parameter --region=us-east-1 --name "production-example-key" --with-decryption --output text --query Parameter.Value > private-key.pem
```

## IAM Permission
The required IAM permissions to create resources from this module can be found [here](https://github.com/saturnops/terraform-aws-ssh-keypair/blob/main/IAM.md)


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.21 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 3.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.21 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_key_pair"></a> [key\_pair](#module\_key\_pair) | terraform-aws-modules/key-pair/aws | 2.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.ssm_ec2_keypair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment identifier for the key pair | `string` | `""` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name for the key pair to be generated | `string` | `""` | no |
| <a name="input_ssm_parameter_path"></a> [ssm\_parameter\_path](#input\_ssm\_parameter\_path) | The name of the ssm parameter for storing the keypair | `string` | `"/example/ssm"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_pair_name"></a> [key\_pair\_name](#output\_key\_pair\_name) | The key pair name. |
| <a name="output_ssm_parameter_arn"></a> [ssm\_parameter\_arn](#output\_ssm\_parameter\_arn) | The SSM parameter ARN of key pair. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
