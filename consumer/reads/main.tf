terraform {
  required_providers {
    hashicups = {
      version = "0.2"
      source = "hashicorp.com/edu/hashicups"
    }
  }
}

data "hashicups_coffees" "all" {}

# Returns all coffees
output "all_coffees" {
  value = data.hashicups_coffees.all.coffees
}