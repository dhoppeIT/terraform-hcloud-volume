output "id" {
  description = "Unique ID of the volume"
  value       = module.hcloud_volume.id
}

output "name" {
  description = "Name of the volume"
  value       = module.hcloud_volume.name
}

output "size" {
  description = "Size of the volume"
  value       = module.hcloud_volume.size
}

output "location" {
  description = "The location name"
  value       = module.hcloud_volume.location
}

output "server_id" {
  description = "Server ID the volume is attached to"
  value       = module.hcloud_volume.server_id
}

output "labels" {
  description = "User-defined labels (key-value pairs)"
  value       = module.hcloud_volume.labels
}

output "linux_device" {
  description = "Device path on the file system for the Volume"
  value       = module.hcloud_volume.linux_device
}

output "delete_protection" {
  description = "Whether delete protection is enabled"
  value       = module.hcloud_volume.delete_protection
}
