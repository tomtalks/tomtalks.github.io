terraform {
  required_providers {
    ovh = {
      source  = "ovh/ovh"
    }
  }
}

provider "ovh" {
  endpoint           = var.ENDPOINT
  application_key    = var.APPLICATION_KEY
  application_secret = var.APPLICATION_SECRET
  consumer_key       = var.CONSUMER_KEY
}
