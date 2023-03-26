provider "aws" {
        region = "ap-southeast-2"
        access_key = "AKIAZOITTNXULYNR5PNZ"
        secret_key = "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"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"

  name = "LTIvpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-southeast-2a", "ap-southeast-2b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
