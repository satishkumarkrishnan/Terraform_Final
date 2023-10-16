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
      version = "~> 4.0.0"
    }
  }
}

module "vpc" {
  source  = "git@github.com:satishkumarkrishnan/terraform-aws-vpc.git?ref=main"
}

#module "vpc" {
#  source  = "app.terraform.io/Satish_Terraform/vpc/aws"
#  version = "0.0.1"
#}

module "asg" {
 source  = "git@github.com:satishkumarkrishnan/terraform-aws-asg.git?ref=main"
 depends_on = [module.vpc]
}

#module "asg" {
#  source  = "app.terraform.io/Satish_Terraform/asg/aws"
#  version = "0.0.6"
#}