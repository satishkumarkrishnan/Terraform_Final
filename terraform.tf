terraform {
  cloud {
    organization = "CG_Tokyo"

    workspaces {
      name = "Terraform_POC"
    }
  }
}
provider "aws" {
  region = var.region
}