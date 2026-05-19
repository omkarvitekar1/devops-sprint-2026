terraform {
  required_version = ">= 1.5.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

provider "null" {}

# Locals — values computed inside the code
locals {
  sprint_label = "${var.environment}-day${var.sprint_day}-${var.owner}"
}

# Resource using a variable and a local
resource "null_resource" "sprint_marker" {
  triggers = {
    label       = local.sprint_label
    environment = var.environment
    day         = var.sprint_day
    owner       = var.owner
  }
}
