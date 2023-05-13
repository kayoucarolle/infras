variable "identifier" {
  type    = string
  default = "fruits-db"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0313f6ccd16449f86"
}

variable "vers" {
  type    = string
  default = "13.4"
}

variable "instance_class" {
  type    = string
  default = "db.t3.small"
}

variable "allocated_storage" {
  type    = number
  default = 20
}

variable "max_allocated_storage" {
  type    = number
  default = 100
}

variable "name" {
  type    = string
  default = "artifactory"
}

variable "username" {
  type    = string
  default = "exampleuser"
}

variable "password" {
  type    = string
  default = "examplepassword"
}

variable "common_tags" {
  type = map(any)
  default = {
    "AssetID"       = "2560"
    "AssetName"     = "Insfrastructure"
    "Teams"         = "DEL"
    "Environment"   = "dev"
    "Project"       = "alpha"
    "CreateBy"      = "Terraform"
    "cloudProvider" = "aws"
  }

}
variable "name_parameter" {
  type    = string
  default = "postgres14"
}

variable "family" {
  type    = string
  default = "postgres15"
}

variable "multi_az" {
  type    = string
  default = false
}

variable "retention_period" {
  type    = number
  default = 7
}

variable "deletion_protection" {
  type    = string
  default = false
}

variable "engine" {
  type    = string
  default = "postgres"
}


