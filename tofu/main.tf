terraform {
    required_providers {
        google = {
	        version = "~> 5.14.0"
	    }
    }
}

provider "google" {
    project = "us-healthcare-survey"
    region  = "us-east4"
}

locals {
    project_id     = "us-healthcare-survey"
    project_name   = "us-healthcare-survey"
    project_number = "145566699064"
    storage_prefix = "org-icelus-us-healthcare-survey"
}

resource "google_storage_bucket" "raw-data" {
    name           = "${local.storage_prefix}-raw"
    force_destroy  = false
    location       = "US"
    requester_pays = true
}

resource "google_storage_bucket_access_control" "make-raw-publicly-readable" {
  bucket = google_storage_bucket.raw-data.name
  role   = "READER"
  entity = "allUsers"
}

resource "google_storage_bucket_object" "census_data_raw_pdfs" {
    for_each = fileset(path.module, "raw-data/*/*.pdf")

    name         = each.value
    source       = each.value
    content_type = "application/pdf"
    bucket       = google_storage_bucket.raw-data.id
}

resource "google_project_service" "survey-and-vision-ocr" {
    project = local.project_id
    service = "vision.googleapis.com"

    disable_dependent_services = true
    disable_on_destroy         = true
}