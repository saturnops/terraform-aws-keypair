output "key_pair_name" {
  description = "The key pair name."
  value       = module.key_pair.key_pair_name
}

output "ssm_parameter_arn" {
  description = "The SSM parameter ARN of key pair."
  value       = aws_ssm_parameter.ssm_ec2_keypair.arn
}
