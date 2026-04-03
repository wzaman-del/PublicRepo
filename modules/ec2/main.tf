terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "myserver" {
  name   = "DDdeply-server"
  region = "nyc1"
  size   = "s-1vcpu-1gb-35gb-intel"
  image  = "ubuntu-24-04-x64"
  vpc_uuid = "5abf887a-ba3d-4a38-823d-ef7382a4d85d"

}