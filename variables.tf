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
variable "zone_name" {
  description = "The ID of the Route53 zone"
  type        = string
  default     = "example.com"
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the Route53 zone"
  type        = string
  default     = "Private Route53 zone"
}
