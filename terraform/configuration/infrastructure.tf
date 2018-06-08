variable "app1_version_token" {}

resource "consul_keys" "app1_version" {  
  datacenter = "dc1" 
  token = "${var.app1_version_token}"
   key {
    path  = "app1/version"
    value = "0.1"
  }
}
