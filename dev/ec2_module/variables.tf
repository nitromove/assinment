variable "aws_instance" {
  type    = map(string)
  default = {
    ami   = "ami-0a5ed7a812aeb495a"
    type  = "t3.micro"
  }
}

variable "availability_zone" {
  type    = list(string)
  default = ["eu-west-1a", "eu-central-1a", "eu-central-1b"]
}
