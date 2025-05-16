# Route53 outputs
output "private_zone_id" {
  description = "The ID of the private Route53 zone"
  value       = aws_route53_zone.private_zone.id
}
