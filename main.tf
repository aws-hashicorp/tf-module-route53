/**
 * This Terraform configuration creates a private Route53 zone in AWS.
 * It requires the AWS provider and a VPC to be created beforehand.
 */
# Route53 Zone
resource "aws_route53_zone" "private_zone" {
  name = var.zone_name
  vpc {
    vpc_id = var.vpc_id
  }
  comment       = var.description
  force_destroy = false

  depends_on = [var.vpc_id]

  tags = var.tags
}

# Route53 Record
resource "aws_route53_record" "record" {
  count   = var.create_records ? 1 : 0
  zone_id = aws_route53_zone.private_zone.id
  name    = var.record_name
  type    = var.record_type
  ttl     = var.record_ttl
  records = var.record_values

  depends_on = [aws_route53_zone.private_zone]
}
