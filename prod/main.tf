terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version =  "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_vpc" "my_vpc" {
    count = length(var.vpc_config)
  cidr_block = var.vpc_config[count.index].cidr_block

}

resource "aws_subnet" "vpc_subnets" {
  vpc_id     = aws_vpc.my_vpc.id
    cidr_block = var.vpc_config[count.index].cidr_block
}

module "aws_instance" {
  source = "./ec2_module"
}
