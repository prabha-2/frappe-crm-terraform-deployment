
variable "aws_region" {
  description = "AWS region for deploying Frappe CRM"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"
}

variable "instance_name" {
  description = "Name of the Frappe CRM EC2 instance"
  type        = string
  default     = "frappe-crm-server"
}

variable "deployment_email" {
  description = "Email address for Frappe CRM deployment"
  type        = string
  default     = "admin@example.com"
}

variable "site_name" {
  description = "Domain name for Frappe CRM"
  type        = string
  default     = "crm.example.com"
}

variable "ssh_allowed_cidr" {
  description = "IP address allowed to connect through SSH"
  type        = string
}
