variable "project" {
  description = "Project name"
  default     = "terraform-intro-412309"
}

variable "credentials" {
  description = "Google Cloud Auth & Credentials"
  default     = "./Terraform/Keys/my-creds.json"
}

variable "region" {
  description = "Project region"
  default     = "us-central1"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}


variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "terra_intro_dataset"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "terra_hw_bucket"
}
