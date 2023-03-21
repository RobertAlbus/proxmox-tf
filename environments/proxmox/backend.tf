provider "proxmox" {
  virtual_environment {
    endpoint = var.pm_api_url
    username = var.pm_user
    password = var.pm_password
    insecure = true
  }
}

terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.14.1"
    }
  }

  backend "local" {
    path = "terraform.tfstate"
  }
}