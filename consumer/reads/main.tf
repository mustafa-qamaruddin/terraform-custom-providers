terraform {
  required_providers {
    hashicups = {
      version = "0.2"
      source = "hashicorp.com/edu/hashicups"
    }
  }
}

provider "hashicups" {
  username = "education"
  password = "test123"
}

data "hashicups_coffees" "all" {}

data "hashicups_order" "order" {
  id = 1
}

# Returns all coffees
output "all_coffees" {
  value = data.hashicups_coffees.all.coffees
}

output "order" {
  value = data.hashicups_order.order
}