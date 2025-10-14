output "id" {
  description = "Unique ID of the volume"
  value       = hcloud_volume.this.id
}

output "name" {
  description = "Name of the volume"
  value       = hcloud_volume.this.name
}

output "size" {
  description = "Size of the volume"
  value       = hcloud_volume.this.size
}

output "location" {
  description = "The location name"
  value       = hcloud_volume.this.location
}

output "server_id" {
  description = "Server ID the volume is attached to"
  value       = hcloud_volume.this.server_id
}

output "labels" {
  description = "User-defined labels (key-value pairs)"
  value       = hcloud_volume.this.labels
}

output "linux_device" {
  description = "Device path on the file system for the Volume"
  value       = hcloud_volume.this.linux_device
}

output "delete_protection" {
  description = "Whether delete protection is enabled"
  value       = hcloud_volume.this.delete_protection
}
