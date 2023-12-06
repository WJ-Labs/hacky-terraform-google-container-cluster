<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

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
| <a name="input_initial_node_count"></a> [initial\_node\_count](#input\_initial\_node\_count) | When variable node\_pools is defined it will set an initial\_node\_count of 1. | `number` | `1` | no |
| <a name="input_network"></a> [network](#input\_network) | value | `string` | `null` | no |
| <a name="input_node_pools"></a> [node\_pools](#input\_node\_pools) | value | <pre>list(object({<br>    name         = string<br>    location     = string<br>    node_count   = number<br>    machine_type = string<br>  }))</pre> | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_certificate"></a> [cluster\_certificate](#output\_cluster\_certificate) | n/a |
| <a name="output_cluster_client_certificate"></a> [cluster\_client\_certificate](#output\_cluster\_client\_certificate) | n/a |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | n/a |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | n/a |
<!-- END_TF_DOCS -->