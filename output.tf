output "tls_private_key" {
  description = "Warning!! ! Please Save the private key data for future use !"
  value       = nonsensitive(tls_private_key.aws_keypair.private_key_pem)
}

output "public_key" {
  description = "The Public key data"
  value       = tls_private_key.aws_keypair.public_key_openssh
}

output "key_pair_key_name" {
  description = "The key pair name."
  value       = module.key_pair.key_pair_key_name
}
