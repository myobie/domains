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

variable "github_pat" {
  type = string
}

provider "github" {
  owner = "myobie"
  token = var.github_pat
}

terraform {
  required_providers {
    dnsimple = {
      version = "~> 0.9"
      source  = "dnsimple/dnsimple"
    }

    github = {
      version = "5.8.0"
      source  = "integrations/github"
    }
  }

  required_version = "~> 1.3.0"
}
