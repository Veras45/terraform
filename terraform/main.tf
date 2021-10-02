terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {
  
}

provider "digitalocean" {
    token = var.do_token 
}

resource "digitalocean_kubernetes_cluster" "k8s" {
  name   = "k8s"
  region = "nyc1"
  version = "1.21.3-do.0"

  node_pool {
    name       = "default-pool"
    size       = "s-2vcpu-4gb"
    node_count = 2

    
  }
}

resource "local_file" "k8s" {
    content     = digitalocean_kubernetes_cluster.k8s.kube_config.0.raw_config
    filename = "kube_config"
}
