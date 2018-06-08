resource "consul_keys" "test" {  
 
  key {
    path  = "app1/version"
    value = "0.1"
  }
}
