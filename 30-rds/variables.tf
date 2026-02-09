variable "common_tags" {
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = true
  }
}

variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "zone_id" {
  default = "Z051115728XRIO19KLDP8"
}

variable "domain_name" {
  default = "tridev.online"
}