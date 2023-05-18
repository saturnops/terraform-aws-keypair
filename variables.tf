variable "key_name" {
  description = "Specifies the name to be assigned to the key pair that will be generated."
  default     = ""
  type        = string
}

variable "environment" {
  description = "Specifies the identifier for the environment where the key pair will be used."
  default     = ""
  type        = string
}

variable "ssm_parameter_path" {
  description = "Specifies the SSM parameter name that will be used to store the generated key pair."
  default     = "/example/ssm"
  type        = string
}
