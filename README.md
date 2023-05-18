# AWS EC2 Keypair


<br>

This **reusable Terraform module** streamlines the **creation** and **management** of an **EC2 key pair** on **AWS**. It **generates** the key pair, securely **stores** the **private key** in **AWS Systems Manager Parameter Store (SSM)**, and returns the **key pair name** and **SSM parameter ARN** for easy reference in other **infrastructure resources**. By using this module, you can efficiently manage key pairs while maintaining **security** and **compliance** in your AWS environment.

## Usage Example

```hcl
module "key_pair" {
  source = "saturnops/keypair/aws"
  key_name           = "example-key"
  environment        = "production"
  ssm_parameter_path = "production-example-key"
}
```
Refer [this](https://github.com/saturnops/terraform-aws-ssh-keypair/tree/main/examples) for more examples.


## Retrieve Private Key

To Retrieve the Private key from SSM:
```bash
aws ssm get-parameter --name "<ssm_parameter_path>" --region "<region>" --query Parameter.Value --output text
```

Additionally, to save the private key to a file:
```bash
aws ssm get-parameter --name "<ssm_parameter_path>" --region "<region>" --with-decryption --query Parameter.Value --output text > keypair.pem
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
| <a name="input_environment"></a> [environment](#input\_environment) | Specifies the identifier for the environment where the key pair will be used. | `string` | `""` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Specifies the name to be assigned to the key pair that will be generated. | `string` | `""` | no |
| <a name="input_ssm_parameter_path"></a> [ssm\_parameter\_path](#input\_ssm\_parameter\_path) | Specifies the SSM parameter name that will be used to store the generated key pair. | `string` | `"/example/ssm"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_pair_name"></a> [key\_pair\_name](#output\_key\_pair\_name) | The name of the key pair generated for the EC2 instance. |
| <a name="output_ssm_parameter_arn"></a> [ssm\_parameter\_arn](#output\_ssm\_parameter\_arn) | The Amazon Resource Name (ARN) of the SSM parameter used to store the EC2 instance key pair. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->






##               





- Please give our GitHub repository a ⭐️ to show your support and increase its visibility.. 





