terraform {
    required_providers {
        google = {
	    version = "~> 5.14.0"
	}
    }
}

provider "google" {
    project = "us-healthcare-survey"
    region = "us-east4"
}

variable "storage_prefix" {
    type = string
    default = "org-icelus-us-healthcare-survey"
}

resource "google_storage_bucket" "raw-data" {
    name = "${var.storage_prefix}-raw"
    force_destroy = false
    location = "US"
    requester_pays = true
}

resource "google_storage_bucket_access_control" "make-raw-publicly-readable" {
  bucket = google_storage_bucket.raw-data.name
  role   = "READER"
  entity = "allUsers"
}
