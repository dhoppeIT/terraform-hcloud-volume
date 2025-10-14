# Example

The configuration in this directory creates:

* hcloud_volume

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | ~> 1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_hcloud_volume"></a> [hcloud\_volume](#module\_hcloud\_volume) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [hcloud_server.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/data-sources/server) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Hetzner Cloud API endpoint, can be used to override the default API Endpoint | `string` | `"https://api.hetzner.cloud/v1"` | no |
| <a name="input_poll_function"></a> [poll\_function](#input\_poll\_function) | Configures the type of function to be used during the polling | `string` | `"exponential"` | no |
| <a name="input_poll_interval"></a> [poll\_interval](#input\_poll\_interval) | Configures the interval in which actions are polled by the client | `string` | `"500ms"` | no |
| <a name="input_token"></a> [token](#input\_token) | This is the Hetzner Cloud API Token, can also be specified with the HCLOUD\_TOKEN environment variable | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_delete_protection"></a> [delete\_protection](#output\_delete\_protection) | Whether delete protection is enabled |
| <a name="output_id"></a> [id](#output\_id) | Unique ID of the volume |
| <a name="output_labels"></a> [labels](#output\_labels) | User-defined labels (key-value pairs) |
| <a name="output_linux_device"></a> [linux\_device](#output\_linux\_device) | Device path on the file system for the Volume |
| <a name="output_location"></a> [location](#output\_location) | The location name |
| <a name="output_name"></a> [name](#output\_name) | Name of the volume |
| <a name="output_server_id"></a> [server\_id](#output\_server\_id) | Server ID the volume is attached to |
| <a name="output_size"></a> [size](#output\_size) | Size of the volume |
<!-- END_TF_DOCS -->
