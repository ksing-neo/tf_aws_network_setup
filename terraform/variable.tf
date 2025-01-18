# Variable for AWS VPC CIDR Range

variable aws_vpc_cidr {
  type = string
  description = "AWS VPC CIDR Range"
  default = "10.0.0.0/16"
}

# Variable for AWS Region

variable aws_region {
    type = string
    description = "AWS Region"
    default = "us-east-1"
}

# Variable for AWS Availability Zone 1

variable aws_az1 {
    type = string
    description = "AWS Availability Zone 1"
    default = "us-east-1a"
}

# Variable for AWS Availability Zone 2

variable aws_az2 {
    type = string
    description = "AWS Availability Zone 2"
    default = "us-east-1b"
}

# Variable for AWS Public Availability Zone 1 CIDR

variable aws_public_subnet_az1_cidr {
    type = string
    description = "AWS Public Availability Zone 1 CIDR"
    default = "10.0.1.0/24"
}

# Variable for AWS Public Availability Zone 2 CIDR

variable aws_public_subnet_az2_cidr {
    type = string
    description = "AWS Public Availability Zone 2 CIDR"
    default = "10.0.2.0/24"
}

# Variable for AWS Private Availability Zone 1 CIDR

variable aws_private_subnet_az1_cidr {
    type = string
    description = "AWS Private Availability Zone 1 CIDR"
    default = "10.0.3.0/24"
}

# Variable for AWS Private Availability Zone 2 CIDR

variable aws_private_subnet_az2_cidr {
    type = string
    description = "AWS Private Availability Zone 2 CIDR"
    default = "10.0.4.0/24"
}

# Variable to enable or disable NAT Gateway deployment

variable "bool_nat_gateway" {
  description = "Boolean to enable or disable NAT Gateway deployment"
  type        = bool
  default     = false
}
