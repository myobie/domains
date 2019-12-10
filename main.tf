variable "dnsimple_token" {
  type = string
}

variable "dnsimple_account" {
  type = number
}

variable "dnsimple_ttl" {
  type = number
  default = 3600
}

provider "dnsimple" {
  version = "~> 0.2"
  token = var.dnsimple_token
  account = var.dnsimple_account
}
