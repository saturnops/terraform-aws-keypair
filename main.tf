resource "tls_private_key" "eks_keypair" {
  algorithm = "RSA"
}

module "key_pair" {
  source     = "terraform-aws-modules/key-pair/aws"
  version    = "0.6.0"
  key_name   = var.key_name
  public_key = tls_private_key.eks_keypair.public_key_openssh
}


resource "aws_ssm_parameter" "secret" {
  name        = var.ssm_parameter
  description = "The parameter description"
  type        = "SecureString"
  value       = tls_private_key.eks_keypair.private_key_pem
  tags = {
    environment = var.environment
  }
}