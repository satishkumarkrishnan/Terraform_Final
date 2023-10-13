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
  source  = "app.terraform.io/CG_Tokyo/vpc/aws"
  version = "0.0.7"
}

module "asg" {
  source  = "app.terraform.io/CG_Tokyo/asg/aws"
  version = "0.0.2"
  depends_on = [module.vpc]
}