terraform {
  backend "gcs" {
    bucket  = "technosynz-dev-tf-state-bucket"
    prefix  = "terraform/state"
  }
}

