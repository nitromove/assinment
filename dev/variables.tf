variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "vpc_config" {
  description = "Configuration for VPCs"
  type        = list(object({
    environment        = string
    cidr_block         = string
    availability_zones = list(string)
  }))
  
  default = [
    {
      environment        = "dev"
      cidr_block         = "10.0.0.0/16"
      availability_zones = ["eu-west-1a", "eu-west-1b"]
    },
    {
      environment        = "prod"
      cidr_block         = "10.1.0.0/16"
      availability_zones = ["eu-central-1a", "eu-central-1b"]
    },
  ]
}
