terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
      version = "2.50.0"
    }
  }
}

provider "scaleway" {
  region = "fr-par"
}