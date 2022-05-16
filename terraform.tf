terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "=4.20.0"
    }
    random = {
      source = "hashicorp/random"
      version = "=3.1.3"
    }
  }
  required_version = ">= 1.1"
}