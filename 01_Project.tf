#Create Project
resource "openstack_identity_project_v3" "VPS_test" {
  name        = "VPS_test_1"
  description = "Created Automatically by Terraform"
  domain_id   = "default"
}

data "openstack_identity_user_v3" "admin" {
  name = "admin"
}

data "openstack_identity_role_v3" "role_admin" {
  name = "admin"
}

resource "openstack_identity_role_assignment_v3" "role_assignment_admin" {
  user_id   =  data.openstack_identity_user_v3.admin.id
  project_id = openstack_identity_project_v3.VPS_test.id
  role_id    = data.openstack_identity_role_v3.role_admin.id
}
