output "cluster_id" {
  value       = google_container_cluster.cluster.id
  description = "An identifier for the resource with format projects/{{project}}/locations/{{zone}}/clusters/{{name}}"
}

output "cluster_endpoint" {
  value       = google_container_cluster.cluster.endpoint
  description = "The IP address of this cluster's Kubernetes master."
}

output "cluster_ca_certificate" {
  value       = base64decode(google_container_cluster.cluster.master_auth.0.cluster_ca_certificate)
  description = "Base64 decoded public certificate that is the root certificate of the cluster."
}

output "cluster_client_certificate" {
  value       = base64decode(google_container_cluster.cluster.master_auth.0.client_certificate)
  description = "Base64 decoded public certificate used by clients to authenticate to the cluster endpoint."
}
