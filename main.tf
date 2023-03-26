provider "aws" {
        region = "ap-south-1"
        access_key = "AKIAZOITTNXULYNR5PNZ"
        secret_key = "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"
}

module "vpc" {
  source = "./vpc"
}
