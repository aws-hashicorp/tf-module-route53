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
variable "create_zones" {
  description = "Whether to create Route53 zones"
  type        = bool
  default     = true
}

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

# Route53 Record variables
variable "record_name" {
  description = "The name of the Route53 record"
  type        = string
  default     = ""
}

variable "zone_id" {
  description = "The ID of the Route53 zone to create the record in"
  type        = string
  default     = ""
}

variable "record_type" {
  description = "The type of the Route53 record"
  type        = string
  default     = "A"
}

variable "record_ttl" {
  description = "The TTL of the Route53 record"
  type        = number
  default     = 300
}

variable "record_values" {
  description = "The values of the Route53 record"
  type        = list(string)
  default     = []
}

variable "create_records" {
  description = "Whether to create Route53 records"
  type        = bool
  default     = false
}
