# Configure the Consul provider
provider "consul" {
  datacenter = "dc1"
}

resource "consul_keys" "tf_state_kv_path" {

  # Set the CNAME of our load balancer as a key
  key {
    path  = "terraform/lock"
    value = ""
  }
}