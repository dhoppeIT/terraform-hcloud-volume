module "hcloud_volume" {
  source = "../../"

  name = "volume-1"
  size = 10

  server_id = data.hcloud_server.this.id
  automount = true
}
