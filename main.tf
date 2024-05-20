terraform {
    backend "gcs" {}
    required_providers {
        google = {
            version = ">=5.15.0"
        }
    }
}

provider "google" {
    project = "test-environment-423919"
    region = "us-central1"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
