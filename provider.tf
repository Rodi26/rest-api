terraform {
  required_providers {
    xray = {
      source = "jfrog/xray"
      version = "3.0.3"
    }
  }
backend "remote" {
    hostname = "rodolphefplus.jfrog.io"
    organization = "soleng-terraformbe-dev-local"
    workspaces {
         name = "default"
    }
  }
}

provider "xray" {
  # Configuration options
  url = "${var.jfrog_url}"
}