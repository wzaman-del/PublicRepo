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

# Import resource 1
resource "digitalocean_droplet" "first_server" {
  name   = "first-server"
  region = "nyc1"
  size   = "s-1vcpu-1gb-35gb-intel"
  image  = "ubuntu-24-04-x64"
  vpc_uuid = "5abf887a-ba3d-4a38-823d-ef7382a4d85d"
}

# Import resource 2
resource "digitalocean_droplet" "deply_server" {
  name   = "deply-server"
  region = "nyc1"
  size   = "s-1vcpu-1gb-35gb-intel"
  image  = "ubuntu-24-04-x64"
  vpc_uuid = "5abf887a-ba3d-4a38-823d-ef7382a4d85d"
}

# Import resource 3 (duplicate deply-server)
resource "digitalocean_droplet" "deply_server_2" {
  name   = "deply-server"
  region = "nyc1"
  size   = "s-1vcpu-1gb-35gb-intel"
  image  = "ubuntu-24-04-x64"
  vpc_uuid = "5abf887a-ba3d-4a38-823d-ef7382a4d85d"
}

