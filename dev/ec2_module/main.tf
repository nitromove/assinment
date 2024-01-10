resource "aws_instance" "webserver" {
  ami                = var.aws_instance["ami"]
  instance_type      = var.aws_instance["type"]
  count              = length(var.availability_zone)
  subnet_id          = aws_subnet.vpc_subnets.id
  availability_zone  = var.availability_zone[count.index]
}
