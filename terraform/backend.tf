terraform {
  backend "consul" {
    path    = "terraform/state"
    lock = true
  }
}

