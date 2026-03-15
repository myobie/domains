variable "cloudflare_zone_id_myobie_com" {
  type = string
}

resource "cloudflare_dns_record" "myobie_com_root_a" {
  zone_id = var.cloudflare_zone_id_myobie_com
  type    = "A"
  name    = "myobie.com"
  content = "192.0.2.1"
  proxied = true
  ttl     = 1 # Auto
}

resource "cloudflare_dns_record" "myobie_com_www_cname" {
  zone_id = var.cloudflare_zone_id_myobie_com
  type    = "CNAME"
  name    = "www"
  content = "myobie.com"
  proxied = true
  ttl     = 1
}

resource "cloudflare_dns_record" "myobie_com_caa_issue" {
  zone_id = var.cloudflare_zone_id_myobie_com
  type    = "CAA"
  name    = "myobie.com"
  data = {
    flags = 0
    tag   = "issue"
    value = "letsencrypt.org"
  }
  ttl = 1
}

resource "cloudflare_dns_record" "myobie_com_caa_iodef" {
  zone_id = var.cloudflare_zone_id_myobie_com
  type    = "CAA"
  name    = "myobie.com"
  data = {
    flags = 0
    tag   = "iodef"
    value = "mailto:nathan@myobie.com"
  }
  ttl = 1
}

resource "cloudflare_dns_record" "myobie_com_mx_1_fastmail" {
  zone_id  = var.cloudflare_zone_id_myobie_com
  type     = "MX"
  name     = "myobie.com"
  content  = "in1-smtp.messagingengine.com"
  priority = 10
  ttl      = 1
}

resource "cloudflare_dns_record" "myobie_com_mx_2_fastmail" {
  zone_id  = var.cloudflare_zone_id_myobie_com
  type     = "MX"
  name     = "myobie.com"
  content  = "in2-smtp.messagingengine.com"
  priority = 20
  ttl      = 1
}

resource "cloudflare_dns_record" "myobie_com_txt_fastmail_spf" {
  zone_id = var.cloudflare_zone_id_myobie_com
  type    = "TXT"
  name    = "myobie.com"
  content = "\"v=spf1 include:spf.messagingengine.com ?all\""
  ttl     = 1
}

resource "cloudflare_dns_record" "myobie_com_txt_fastmail_dmarc" {
  zone_id = var.cloudflare_zone_id_myobie_com
  type    = "TXT"
  name    = "_dmarc"
  content = "\"v=DMARC1; p=none;\""
  ttl     = 1
}

# TODO: DKIM records should be DNS-only (proxied = false) for email auth to work
# They are currently proxied in Cloudflare which breaks DKIM verification
resource "cloudflare_dns_record" "myobie_com_cname_fm1_domainkey" {
  zone_id = var.cloudflare_zone_id_myobie_com
  type    = "CNAME"
  name    = "fm1._domainkey"
  content = "fm1.myobie.com.dkim.fmhosted.com"
  proxied = true
  ttl     = 1
}

resource "cloudflare_dns_record" "myobie_com_cname_fm2_domainkey" {
  zone_id = var.cloudflare_zone_id_myobie_com
  type    = "CNAME"
  name    = "fm2._domainkey"
  content = "fm2.myobie.com.dkim.fmhosted.com"
  proxied = true
  ttl     = 1
}

resource "cloudflare_dns_record" "myobie_com_cname_fm3_domainkey" {
  zone_id = var.cloudflare_zone_id_myobie_com
  type    = "CNAME"
  name    = "fm3._domainkey"
  content = "fm3.myobie.com.dkim.fmhosted.com"
  proxied = true
  ttl     = 1
}
