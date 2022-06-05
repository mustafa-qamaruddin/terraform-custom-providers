terraform {
    required_providers {
        hashicups = {
            version = "~> 0.3.1"
            source = "hashicorp.com/edu/hashicups"
        }
    }
}

provider "hashicups" {
    username = "education"
    password = "test123"
}

resource "hashicups_order" "edu2" {
    items {
        coffee {
            id = 3
        }
        quantity = 3
    }
    items {
        coffee {
            id = 3
        }
        quantity = 3
    }
    items {
        coffee {
            id = 3
        }
        quantity = 4
    }
}


data "hashicups_ingredients" "first_coffee" {
    coffee_id = hashicups_order.edu2.items[0].coffee[0].id
}

output "edu_order" {
    value = resource.hashicups_order.edu2
}

output "first_coffee_ingredients" {
    value = data.hashicups_ingredients.first_coffee
}