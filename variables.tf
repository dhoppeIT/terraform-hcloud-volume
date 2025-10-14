variable "name" {
  type        = string
  description = "Name of the volume to create"
}

variable "size" {
  type        = number
  description = "Size of the volume (in GB)"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "User-defined labels (key-value pairs)"
}

variable "server_id" {
  type        = number
  default     = null
  description = "Server to attach the Volume to, not allowed if location argument is passed"
}

variable "location" {
  type        = string
  default     = null
  description = "The location name of the volume to create, not allowed if server_id argument is passed"
}

variable "automount" {
  type        = bool
  default     = false
  description = "Automount the volume upon attaching it (server_id must be provided)"
}

variable "format" {
  type        = string
  default     = "ext4"
  description = "Format volume after creation"
}

variable "delete_protection" {
  type        = bool
  default     = false
  description = "Enable or disable delete protection"
}
