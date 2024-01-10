variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "vpc_config" {
  type    = list(string)
  default = ["10.0.0.0/16", "10.1.0.0/16"]
}