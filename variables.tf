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
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "description" {
  description = "The description of the Route53 zone"
  type        = string
  default     = "Private Route53 zone"
}

# Route53 Record variables
variable "record_name" {
  description = "The name of the Route53 record"
  type        = string
}

variable "record_type" {
  description = "The type of the Route53 record"
  type        = string
}

variable "record_ttl" {
  description = "The TTL of the Route53 record"
  type        = number
  default     = 300
}

variable "record_values" {
  description = "The values of the Route53 record"
  type        = list(string)
}

variable "create_records" {
  description = "Whether to create Route53 records"
  type        = bool
  default     = false
}
