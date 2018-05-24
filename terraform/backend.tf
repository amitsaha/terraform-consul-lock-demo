terraform {
  backend "consul" {
    path    = "terraform/lock"
    access_token = "21c1d0a5-5aa4-f926-eccc-5976c33f634a"
    lock = true
  }
}