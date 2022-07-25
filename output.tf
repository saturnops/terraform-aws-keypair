output "key_pair_name" {
  description = "The key pair name."
  value       = module.key_pair.key_pair_key_name
}

output "key_pair_arn" {
  description = "The key pair ARN."
  value       = module.key_pair.key_pair_arn
}

