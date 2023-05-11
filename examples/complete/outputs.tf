output "key_pair_name" {
  description = "The name of the key pair generated for the EC2 instance."
  value       = module.key_pair.key_pair_name
}

output "ssm_parameter_arn" {
  description = "The Amazon Resource Name (ARN) of the SSM parameter used to store the EC2 instance key pair."
  value       = module.key_pair.ssm_parameter_arn
}
