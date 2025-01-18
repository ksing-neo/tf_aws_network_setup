output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.vpc.id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = [aws_subnet.public_subnet_az1.id, aws_subnet.public_subnet_az2.id]
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = [aws_subnet.private_subnet_az1.id, aws_subnet.private_subnet_az2.id]
}

output "security_group_id" {
    description = "List of security group IDs"
    value = aws_security_group.default_security_group.id
}