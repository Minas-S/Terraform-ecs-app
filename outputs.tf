output "alb_dns_name" {
  description = "ALB DNS name"
  value       = aws_lb.public_alb.dns_name
}

output "vpc_id" {
  value = aws_vpc.this.id
}
