resource "google_container_cluster" "cluster" {
  name     = var.cluster_name
  location = var.cluster_location

  network                  = var.network
  remove_default_node_pool = length(var.node_pools) > 0 ? true : false
  initial_node_count       = length(var.node_pools) > 0 ? 1 : var.initial_node_count

  workload_identity_config {
    workload_pool = format("%s.svc.id.goog", var.project_id)
  }

  deletion_protection = var.deletion_protection

  dynamic "node_config" {
    for_each = length(var.tags) > 0 ? [1] : [0]
    content {
      tags = var.tags
    }
  }

}

resource "google_container_node_pool" "node_pool" {
  for_each = { for node_pool in var.node_pools : node_pool.name => node_pool }

  name     = each.value.name
  location = each.value.location
  cluster  = google_container_cluster.cluster.name

  autoscaling {
    min_node_count = each.value.autoscaling.min_node_count
    max_node_count = each.value.autoscaling.max_node_count
  }

  node_config {
    machine_type = each.value.machine_type
    workload_metadata_config {
      mode = "GKE_METADATA"
    }
  }
}
