terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  # Configuration options
  credentials = "./Terraform/Keys/my-creds.json"
  project     = "terraform-intro-412309"
  region      = "us-central1"
}


resource "google_storage_bucket" "terra-intro-bucket" {
  name          = "terra-intro-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "terra_intro_dataset" {
  dataset_id = "terra_intro_dataset"
}