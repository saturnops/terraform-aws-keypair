output "_1_tls_private_key" {
  description = "Warning!! ! Please Save this for future use !"
  value       = nonsensitive(tls_private_key.eks_keypair.private_key_pem)
}

output "_2_public_key" {
  description = ""
  value       = tls_private_key.eks_keypair.public_key_openssh
}