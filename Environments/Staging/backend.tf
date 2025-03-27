terraform {
  backend "gcs" {
    bucket  = "technosynz-stag-tf-state-bucket"
    prefix  = "terraform/state"
  }
}