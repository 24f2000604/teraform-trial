output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_ids" {
  value = aws_subnet.pub[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.pri[*].id
}
