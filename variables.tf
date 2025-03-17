variable "project_id" {
  description = "GCP Project ID"
}

variable "region" {
  description = "GCP Region"
}

variable "node_count" {
  description = "Number of nodes per cluster"
  default     = 1
}

variable "machine_type" {
  description = "Machine type for nodes"
  default     = "e2-medium"
}
