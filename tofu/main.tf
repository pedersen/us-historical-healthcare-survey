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

resource "google_storage_bucket_object" "number-of-persons-1790-pdf" {
 name         = "1790-number-of-persons.pdf"
 source       = "${path.root}/raw-data/1790-number-of-persons.pdf"
 content_type = "application/pdf"
 bucket       = google_storage_bucket.raw-data.id
}

resource "google_storage_bucket_object" "returns-1800-pdf" {
 name         = "1800-numbers.pdf"
 source       = "${path.root}/raw-data/1800-returns.pdf"
 content_type = "application/pdf"
 bucket       = google_storage_bucket.raw-data.id
}

resource "google_storage_bucket_object" "returns-1820-pdf" {
 name         = "1820a-14.pdf"
 source       = "${path.root}/raw-data/1820a-02.pdf"
 content_type = "application/pdf"
 bucket       = google_storage_bucket.raw-data.id
}

resource "google_storage_bucket_object" "returns-1826-pdf" {
 name         = "1850a-02.pdf"
 source       = "${path.root}/raw-data/1850a-14.pdf"
 content_type = "application/pdf"
 bucket       = google_storage_bucket.raw-data.id
}

