terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.30.0" 
    }
  }
}

provider "google" {
  project = "nana-korobi-jp"
  region  = "asia-northeast2"
}






