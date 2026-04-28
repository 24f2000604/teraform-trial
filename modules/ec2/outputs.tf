output "security_group_id" {
  value = aws_security_group.ec2.id
}

output "launch_template_id" {
  value = aws_launch_template.this.id
}

output "autoscaling_group_name" {
  value = aws_autoscaling_group.this.name
}
