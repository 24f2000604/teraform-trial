output "alb_dns_name" {
  value = aws_lb.lb.dns_name
}

output "security_group_id" {
  value = aws_security_group.sg.id
}

output "target_group_arn" {
  value = aws_lb_target_group.tg.arn
}
