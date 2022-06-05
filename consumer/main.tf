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

resource "hashicups_order" "edu" {
    items {
        coffee {
            id = 3
        }
        quantity = 2
    }
    items {
        coffee {
            id = 3
        }
        quantity = 2
    }
}

output "edu_order" {
    value = "hashicups_order.edu"
}