terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = ">= 3.15" }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "ct_management"
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::141971524659:role/AWSControlTowerExecution"
  }
}
