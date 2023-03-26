provider "aws" {
        region = "ap-southeast-2"
        access_key = "AKIAZOITTNXULYNR5PNZ"
        secret_key = "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"
}

module "vpc" {
  source = "./vpc"
}
        
module "ec2_instance" {
  source = "./ec2"
}
        
module "rds-db" {
  source = "./rds"
}
