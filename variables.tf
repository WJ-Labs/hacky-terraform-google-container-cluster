variable "cluster_name" {
  type        = string
  description = "The name of the cluster, unique within the project and location."
}

variable "project_id" {
  type        = string
  description = "The Google project ID."
}

variable "cluster_location" {
  type        = string
  description = "(Optional) The location (region or zone) in which the cluster master will be created, as well as the default node location."
  default     = null
}

variable "network" {
  description = "The name or self_link of the Google Compute Engine network to which the cluster is connected."
  type        = string
  default     = null
}

variable "deletion_protection" {
  description = "Whether or not to allow Terraform to destroy the cluster."
  type        = bool
  default     = true
}

variable "initial_node_count" {
  description = "When variable node_pools is defined it will set an initial_node_count of 1."
  type        = number
  default     = 1
}

variable "node_pools" {
  description = "A list of objects to configure additional node pools."
  type = list(object({
    name     = string
    location = string
    autoscaling = object({
      min_node_count = number
      max_node_count = number
    })
    machine_type = string
  }))
  default = []
}

variable "tags" {
  description = "The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls."
  type        = list(string)
  default     = []
}