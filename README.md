<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 5.8 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_container_cluster.cluster](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster) | resource |
| [google_container_node_pool.node_pool](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_node_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_location"></a> [cluster\_location](#input\_cluster\_location) | (Optional) The location (region or zone) in which the cluster master will be created, as well as the default node location. | `string` | `null` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the cluster, unique within the project and location. | `string` | n/a | yes |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | Whether or not to allow Terraform to destroy the cluster. | `bool` | `true` | no |
| <a name="input_initial_node_count"></a> [initial\_node\_count](#input\_initial\_node\_count) | When variable node\_pools is defined it will set an initial\_node\_count of 1. | `number` | `1` | no |
| <a name="input_network"></a> [network](#input\_network) | The name or self\_link of the Google Compute Engine network to which the cluster is connected. | `string` | `null` | no |
| <a name="input_node_pools"></a> [node\_pools](#input\_node\_pools) | A list of objects to configure additional node pools. | <pre>list(object({<br>    name     = string<br>    location = string<br>    autoscaling = object({<br>      min_node_count = number<br>      max_node_count = number<br>    })<br>    machine_type = string<br>  }))</pre> | `[]` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The Google project ID. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | Base64 decoded public certificate that is the root certificate of the cluster. |
| <a name="output_cluster_client_certificate"></a> [cluster\_client\_certificate](#output\_cluster\_client\_certificate) | Base64 decoded public certificate used by clients to authenticate to the cluster endpoint. |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | The IP address of this cluster's Kubernetes master. |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | An identifier for the resource with format projects/{{project}}/locations/{{zone}}/clusters/{{name}} |
<!-- END_TF_DOCS -->