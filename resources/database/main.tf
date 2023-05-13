provider "aws" {
  region = "us-east-1"
}



terraform {
  backend "s3" {
    bucket         = "buproducts"
    dynamodb_table = "Products_table"
    key            = "databases/dev-fruitsveg/terraform.tfstate"
    region         = "us-east-1"
  }
}

locals {
  identifier = "example-postgres-db"
  vers = "13.4"
  instance_class = "db.t3.small"
  vpc_id = "vpc-0313f6ccd16449f86"
  name_parameter = "postgres13" 
  family = "postgres14"
  multi_az = false
  retention_period = 7
  deletion_protection = false
  engine = "postgre"
  allocated_storage = 20
  max_allocated_storage = 100
  name = "artifactory"
  username = "exampleuser"
  password = "examplepassword"
  

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

module "postgres" {
    source = "../../../modules/postgre"
    identifier = local.identifier
    vers = local.vers
    vpc_id = local.vpc_id
    instance_class = local.instance_class
    name_parameter = local.name_parameter
    family = local.family
    multi_az = false
    retention_period = 7
    deletion_protection = false
    engine = local.engine
    max_allocated_storage = local.max_allocated_storage
    allocated_storage = local.allocated_storage
    name = local.name
    username = local.username
    common_tags = local.common_tags
}

