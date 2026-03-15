variable "dnsimple_token" {
  type = string
}

variable "dnsimple_account" {
  type = number
}

variable "dnsimple_ttl" {
  type    = number
  default = 3600
}

provider "dnsimple" {
  token   = var.dnsimple_token
  account = var.dnsimple_account
}

variable "cloudflare_api_token" {
  type = string
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

terraform {
  required_providers {
    dnsimple = {
      version = "~> 2.0"
      source  = "dnsimple/dnsimple"
    }

    cloudflare = {
      version = "~> 5.18"
      source  = "cloudflare/cloudflare"
    }
  }

  required_version = ">= 1.5.0"
}
