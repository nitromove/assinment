terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version =  "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_config[count.index]
}

resource "aws_subnet" "vpc_subnets" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.vpc_config[count.index]
}

module "aws_instance" {
  source = "./ec2_module"
}
