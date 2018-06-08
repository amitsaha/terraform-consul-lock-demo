resource "consul_keys" "app1_version" {  
   key {
    path  = "app1/version"
    value = "0.1"
  }
}
