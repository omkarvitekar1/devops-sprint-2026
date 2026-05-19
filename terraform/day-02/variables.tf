variable "environment" {
  type        = string
  description = "Deployment environment: dev, staging, or prod"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, staging, prod."
  }
}

variable "sprint_day" {
  type        = number
  description = "Day number of the 60-day sprint"
  default     = 2

  validation {
    condition     = var.sprint_day >= 1 && var.sprint_day <= 60
    error_message = "Sprint day must be between 1 and 60."
  }
}

variable "owner" {
  type        = string
  description = "Owner of this infrastructure"
  default     = "omkar"
}
