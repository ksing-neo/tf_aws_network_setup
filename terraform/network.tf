# AWS VPC

resource "aws_vpc" "vpc" {
    cidr_block = var.aws_vpc_cidr
}

# AWS Public Availability Zone 1 Subnet

resource "aws_subnet" "public_subnet_az1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.aws_public_subnet_az1_cidr
    availability_zone = var.aws_az1
    map_public_ip_on_launch = true
}

# AWS Public Availability Zone 2 Subnet

resource "aws_subnet" "public_subnet_az2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.aws_public_subnet_az2_cidr
    availability_zone = var.aws_az2
    map_public_ip_on_launch = true
}

# AWS Private Availability Zone 1 Subnet

resource "aws_subnet" "private_subnet_az1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.aws_private_subnet_az1_cidr
    availability_zone = var.aws_az1
}

# AWS Private Availability Zone 2 Subnet

resource "aws_subnet" "private_subnet_az2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.aws_private_subnet_az2_cidr
    availability_zone = var.aws_az2
}

# AWS Internet Gateway

resource "aws_internet_gateway" "internet_gateway" {
    vpc_id = aws_vpc.vpc.id
}

# AWS Route for Public Subnet

resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.internet_gateway.id
    }
}

# AWS associate Public Route to Public Subnet AZ1

resource "aws_route_table_association" "public_subnet_az1_rt_assoc" {
    subnet_id = aws_subnet.public_subnet_az1.id
    route_table_id = aws_route_table.public_route_table.id
}

# AWS associate Public Route to Public Subnet AZ2

resource "aws_route_table_association" "public_subnet_az2_rt_assoc" {
    subnet_id = aws_subnet.public_subnet_az2.id
    route_table_id = aws_route_table.public_route_table.id
}

