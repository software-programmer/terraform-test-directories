terraform {}

provider "random" {}

resource "random_string" "customer" {
  length  = 5
  numeric = false
  upper   = false
  special = false
}

output "customer" {
  value = random_string.customer.id
}

output "environment" {
  value = "testing"
}
