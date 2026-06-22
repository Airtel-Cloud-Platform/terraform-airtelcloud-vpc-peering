variable "name" {
  description = "VPC peering connection name"
  type        = string

  validation {
    condition     = length(trim(var.name, " ")) > 0
    error_message = "name cannot be empty."
  }
}

variable "description" {
  description = "VPC peering description"
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string

  validation {
    condition     = length(trim(var.availability_zone, " ")) > 0
    error_message = "availability_zone cannot be empty."
  }
}

variable "region" {
  description = "Region"
  type        = string

  validation {
    condition     = length(trim(var.region, " ")) > 0
    error_message = "region cannot be empty."
  }
}

variable "vpc_source_id" {
  description = "Source VPC ID"
  type        = string

  validation {
    condition     = length(trim(var.vpc_source_id, " ")) > 0
    error_message = "vpc_source_id cannot be empty."
  }
}

variable "vpc_target_id" {
  description = "Target VPC ID"
  type        = string

  validation {
    condition     = length(trim(var.vpc_target_id, " ")) > 0
    error_message = "vpc_target_id cannot be empty."
  }

  validation {
    condition     = var.vpc_target_id != var.vpc_source_id
    error_message = "vpc_target_id must be different from vpc_source_id."
  }
}

variable "is_pcl_enabled" {
  description = "Enable Private Connectivity Link"
  type        = bool
  default     = false
}

variable "allowed_subnet_list" {
  description = "List of allowed subnet IDs"
  type        = list(string)
  default     = []
}

variable "blocked_subnet_list" {
  description = "List of blocked subnet IDs"
  type        = list(string)
  default     = []
}
