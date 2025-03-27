terraform {
  backend "gcs" {
    bucket  = "technosynz-prod-tf-state-bucket"
    prefix  = "terraform/state"
  }
}