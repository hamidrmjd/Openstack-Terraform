#Flavor
#  create flavor for openstack
resource "openstack_compute_flavor_v2" "flavor" {
  name  = "C1R1"
  ram   = "1024"
  vcpus = "1"
  disk  = "0"
  is_public = false
}

#  access to flavor 
resource "openstack_compute_flavor_access_v2" "access_1" {
  tenant_id = "${openstack_identity_project_v3.VPS_test.id}"
  flavor_id = "${openstack_compute_flavor_v2.flavor.id}"
}

resource "openstack_compute_flavor_v2" "flavor_2" {
  name  = "C2R2_2"
  ram   = "2048"
  vcpus = "2"
  disk  = "0"
  is_public = false
}

resource "openstack_compute_flavor_access_v2" "access_2" {
  tenant_id = "${openstack_identity_project_v3.VPS_test.id}"
  flavor_id = "${openstack_compute_flavor_v2.flavor_2.id}"
}
