module "aws_nat_gateway" {
    count = var.bool_nat_gateway ? 1 : 0
    source = "./network_optional_NAT_Gateway"
    vpc_id = aws_vpc.vpc.id
    private_subnet_az1_id = aws_subnet.private_subnet_az1.id
    private_subnet_az2_id = aws_subnet.private_subnet_az2.id
    public_subnet_az1_id = aws_subnet.public_subnet_az1.id
    public_subnet_az2_id = aws_subnet.public_subnet_az2.id
}