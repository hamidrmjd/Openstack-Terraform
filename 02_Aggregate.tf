#Host Aggregate
resource "openstack_compute_aggregate_v2" "Asiatech_Business_Hosts_3" {
  name   = "${openstack_identity_project_v3.VPS_test.name}"
  zone   = "nova"
  metadata = {
    filter_tenant_id  = "${openstack_identity_project_v3.VPS_test.id}"
    availability_zone =  "nova"
  }
  hosts =  var.hosts
}

