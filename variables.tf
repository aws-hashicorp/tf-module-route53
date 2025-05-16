# Global variables
variable "tags" {
  description = "Tags to assign to the resources"
  type        = map(string)
  default = {
    Manager     = "Terraform"
    Environment = "dev"
  }
}

# Route53 variables
variable "zone_id" {
  description = "The ID of the Route53 zone"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}
