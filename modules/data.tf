data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["2560-dev-alpha-vpc"]
  }
}

data "aws_subnet" "subnet_05" {
  filter {
    name   = "tag:Name"
    values = ["2560-dev-alpha-subnetdb1a"]
  }
}

data "aws_subnet" "subnet_06" {
  filter {
    name   = "tag:Name"
    values = ["2560-dev-alpha-subnetdb1b"]
  }
}