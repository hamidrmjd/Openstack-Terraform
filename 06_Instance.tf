# Launch instance

resource "openstack_compute_instance_v2" "boot-from-volume" {
  name            = var.instance_name
  flavor_id       = "${openstack_compute_flavor_v2.flavor_2.id}"
  # key_pair        = "my_key_pair_name"
  security_groups = ["default"]

  block_device {
    uuid                  = "${openstack_blockstorage_volume_v3.volume.id}"
    source_type           = "volume"
    boot_index            = 0
    destination_type      = "volume"
    delete_on_termination = false
  }

  network {
    name = "public"
  }
}