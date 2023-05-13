provider "aws" {
    region = local.region
}

locals {
  cidr_block = "192.168.0.0/16"
  region = "us-east-1"

  subnet = [
    "192.168.1.0/24",
    "192.168.2.0/24",
    "192.168.3.0/24",
    "192.168.4.0/24",
    "192.168.5.0/24",
    "192.168.6.0/24"
  ]
  
  azone = [
    "us-east-1a",
    "us-east-1b"
    ]

    common_tags = {
    "AssetID"       = "2560"
    "AssetName"     = "Insfrastructure"
    "Teams"         = "DEL"
    "Environment"   = "dev"
    "Project"       = "alpha"
    "CreateBy"      = "Terraform"
    "cloudProvider" = "aws"
 }
}

terraform {
  backend "s3" {
    bucket         = "buproducts"
    key            = "network/dev-fruitsveg/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "Products_table"
  }
}
module "vpc" {
    source = "../../../modules/network"
    cidr_block = local.cidr_block
    region = local.region
    subnet = local.subnet
    azone = local.azone
    common_tags = local.common_tags
}