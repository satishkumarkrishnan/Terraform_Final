terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
}
module "vpc" {
  source  = "git@github.com:satishkumarkrishnan/terraform-aws-vpc.git"
#  version = "0.0.7"
}

module "asg" {
  source  = "git@github.com:satishkumarkrishnan/terraform-aws-asg.git"
  version = "0.0.2"
  depends_on = [module.vpc]
}