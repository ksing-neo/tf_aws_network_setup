resource "aws_security_group" "default_security_group" {
  name        = "default_security_group"
  description = "Default Security Group for the VPC"
  vpc_id      = aws_vpc.vpc.id

}