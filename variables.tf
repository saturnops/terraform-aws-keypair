variable "key_name" {
  description = "The name for the key pair to be generated"
  default     = "test-key"
  type        = string
}

variable "environment" {
  description = "Environment identifier for the key pair"
  default     = "dev"
  type        = string
}

variable "ssm_parameter_path" {
  description = "The name of the ssm parameter for storing the keypair"
  default     = "/test/ssm"
  type        = string
}
