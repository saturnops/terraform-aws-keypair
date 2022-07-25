output "key_pair_name" {
  description = "The key pair name."
  value       = module.key_pair.key_pair_key_name
}

output "ssm_parameter_arn" {
  description = "The key pair ARN."
  value       = aws_ssm_parameter.ssm_ec2_keypair.arn
}
