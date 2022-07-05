resource "tls_private_key" "aws_keypair" {
  algorithm = "RSA"
}

module "key_pair" {
  source     = "terraform-aws-modules/key-pair/aws"
  version    = "1.0.1"
  key_name   = var.key_name
  public_key = tls_private_key.aws_keypair.public_key_openssh
}


resource "aws_ssm_parameter" "secret" {
  name        = var.ssm_parameter
  description = "Stores the private key of ec2 key pair"
  type        = "SecureString"
  value       = tls_private_key.aws_keypair.private_key_pem
  tags = {
    Environment = var.environment
    Name = var.ssm_parameter
  }
}
