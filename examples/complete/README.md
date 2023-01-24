# AWS EC2 key pair

Configuration in this directory creates EC2 key pair.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

<<<<<<< HEAD
## IAM Permission
<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Policy required is:
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.21 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 3.4 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
<<<<<<< HEAD
| <a name="module_key_pair"></a> [key\_pair](#module\_key\_pair) | ../../ | n/a |
=======
| <a name="module_key_pair"></a> [key\_pair](#module\_key\_pair) | saturnops/terraform-aws-ssh-keypair | n/a |
>>>>>>> e0e34e1c6a140fc579082a1e69ac971caff29059

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_pair_name"></a> [key\_pair\_name](#output\_key\_pair\_name) | The key pair name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
