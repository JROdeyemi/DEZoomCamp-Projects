terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "5.6.0"
        }
    }
}

provider "google" {
    # Configuration options
    project = "terraform-intro-412309"
    region = "us-central1"
}