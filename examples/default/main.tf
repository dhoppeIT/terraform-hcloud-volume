module "hcloud_volume" {
  source = "../../"

  name = "volume-1"
  size = 10

  location = "nbg1"
}
