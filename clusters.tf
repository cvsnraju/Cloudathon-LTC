terraform {
  backend "gcs" {
    bucket = "ltc-hack-prj-19-cloud-build-logs"
    prefix = "opentofu/gke-clusters"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "gke_cluster" {
  count              = 3
  name               = "gke-cluster-${count.index + 1}"
  location           = var.region
  initial_node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
