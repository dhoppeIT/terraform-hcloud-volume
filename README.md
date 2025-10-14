# terraform-hcloud-volume

Terraform module to manage the following Hetzner Cloud resources:

* hcloud_volume

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "hcloud_server" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-hcloud-server/local"
  version = "1.1.0"

  name        = "example-server"
  image       = "debian-13"
  server_type = "cx22"

  location = "nbg1"
}

module "hcloud_volume" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-hcloud-volume/local"
  version = "1.0.0"

  name = "volume-1"
  size = 10

  server_id = module.hcloud_server.id
  automount = true
}

```

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

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_volume.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/volume) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_automount"></a> [automount](#input\_automount) | Automount the volume upon attaching it (server\_id must be provided) | `bool` | `false` | no |
| <a name="input_delete_protection"></a> [delete\_protection](#input\_delete\_protection) | Enable or disable delete protection | `bool` | `false` | no |
| <a name="input_format"></a> [format](#input\_format) | Format volume after creation | `string` | `"ext4"` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | User-defined labels (key-value pairs) | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | The location name of the volume to create, not allowed if server\_id argument is passed | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the volume to create | `string` | n/a | yes |
| <a name="input_server_id"></a> [server\_id](#input\_server\_id) | Server to attach the Volume to, not allowed if location argument is passed | `number` | `null` | no |
| <a name="input_size"></a> [size](#input\_size) | Size of the volume (in GB) | `number` | n/a | yes |

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

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
