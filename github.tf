data "github_repository" "domains" {
  full_name = "myobie/domains"
}

locals {
  domains_secrets = {
    github_pat       = var.github_pat
    dnsimple_account = var.dnsimple_account
    dnsimple_token   = var.dnsimple_token
  }
}

resource "github_actions_secret" "infra_secret" {
  for_each        = local.domains_secrets
  repository      = data.github_repository.domains.name
  secret_name     = "TF_VAR_${each.key}"
  plaintext_value = each.value
}
