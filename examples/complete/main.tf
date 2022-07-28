provider "aws" {
  region = local.region
}

locals {
  environment = "dev"
  region      = "us-east-1"
  name        = "skaf"
}

################################################################################
# Key Pair Module
################################################################################

module "key_pair" {
  source = "../../"

  key_name           = format("%s-%s-kp", local.environment, local.name)
  ssm_parameter      = format("%s-%s-ssm", local.environment, local.name) #SSM parameter secret name
  
}
