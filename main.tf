# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# The following variable is used to configure the provider's authentication
# token. You don't need to provide a token on the command line to apply changes,
# though: using the remote backend, Terraform will execute remotely in Terraform
# Cloud where your token is already securely stored in your workspace!

terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
}

#module "vpc" {
#  source  = "git@github.com:satishkumarkrishnan/terraform-aws-vpc.git?ref=main"
#description = "VPC Module code working independently"
#}

#module "asg" {
# source  = "git@github.com:satishkumarkrishnan/terraform-aws-asg.git?ref=main"
#description = "ASG Module code working independently"
# depends_on = [module.vpc]
#}

#module "iam" {
# source  = "git@github.com:satishkumarkrishnan/Terraform_IAM.git?ref=main" 
# description = "IAM Module code working independently"
#}

#module "ami" {
# source  = "git@github.com:satishkumarkrishnan/Terraform_ami.git?ref=main"
#description = "AMI Module code working independently"
#}

module "rds" {
 source  = "git@github.com:satishkumarkrishnan/Terraform-rds.git?ref=main"
 description = "RDS Module code working independently"
}

/*module "vpc" {
  source  = "app.terraform.io/Satish_Terraform/vpc/aws"
  version = "0.0.3"
}

module "asg" {
  source  = "app.terraform.io/Satish_Terraform/asg/aws"
  version = "0.0.7"
  depends_on = [module.vpc]
}*/
