terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "1.52.1"
    }
  }
}

provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  password    = "PassWord"
  auth_url    = "http://172.16.1.122/identity"
  region      = "RegionOne"
}
