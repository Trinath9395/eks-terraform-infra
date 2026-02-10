variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project     = "expense"
    Environment = "dev"
    terraform   = "true"
  }
}

variable "zone_id" {
  default = "Z051115728XRIO19KLDP8"
}

variable "domain_name" {
  default = "tridev.online"
}