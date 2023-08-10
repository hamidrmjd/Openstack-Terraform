#Volumes
resource "openstack_blockstorage_volume_v3" "volume" {
  name        = var.instance_name
  size        = 50
  image_id    = "09e6a664-6b56-42c3-7541-767aaacbe364"
}