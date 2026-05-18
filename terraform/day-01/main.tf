terraform {
    required_version = ">=1.5.0"

required_providers {
    null = {
        source = "hashicorp/null"
        version = "~> 3.2"
        }
    }
}

provider "null" {}

resource "null_resource" "hello_sprint" {
    triggers = {
        sprint_day = "1"
        message = "Day 1 of 60 - Terraformn lifecycle proof"
    }
}

output "sprit_message" {
    value = "sprint started. Terraformn works. Day-1 hands-on complete"
}

