/**
 * This Terraform configuration creates a private Route53 zone in AWS.
 * It requires the AWS provider and a VPC to be created beforehand.
 */
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
