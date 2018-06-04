terraform {
  backend "consul" {
    path    = "terraform/state"
    access_token = "126d7ef1-a270-32b6-e4f3-815332193875"
    lock = true
  }
}
