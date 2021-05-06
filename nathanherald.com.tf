resource "dnsimple_record" "root_alias" {
  type   = "ALIAS"
  domain = "nathanherald.com"
  name   = ""
  value  = "flamboyant-northcutt-4eefaf.netlify.app"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "caa_email" {
  type     = "CAA"
  priority = 0
  domain   = "nathanherald.com"
  name     = ""
  value    = "0 iodef \"mailto:me@nathanherald.com\""
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "caa_provider" {
  type     = "CAA"
  priority = 0
  domain   = "nathanherald.com"
  name     = ""
  value    = "0 issue \"letsencrypt.org\""
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "www_cname" {
  type   = "CNAME"
  domain = "nathanherald.com"
  name   = "www"
  value  = "flamboyant-northcutt-4eefaf.netlify.app"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "mx_1_fastmail" {
  type     = "MX"
  priority = 10
  domain   = "nathanherald.com"
  name     = ""
  value    = "in1-smtp.messagingengine.com"
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "mx_2_fastmail" {
  type     = "MX"
  priority = 20
  domain   = "nathanherald.com"
  name     = ""
  value    = "in2-smtp.messagingengine.com"
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "txt_fastmail_spf" {
  type   = "TXT"
  domain = "nathanherald.com"
  name   = ""
  value  = "v=spf1 include:spf.messagingengine.com ?all"
  ttl    = var.dnsimple_ttl
}

# TODO: do I still need this?
resource "dnsimple_record" "txt_dmark" {
  type   = "TXT"
  domain = "nathanherald.com"
  name   = "_dmarc"
  value  = "v=DMARC1; p=none;"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "cname_1_fastmail_domainkey" {
  type   = "CNAME"
  domain = "nathanherald.com"
  name   = "fm1._domainkey"
  value  = "fm1.nathanherald.com.dkim.fmhosted.com"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "cname_2_fastmail_domainkey" {
  type   = "CNAME"
  domain = "nathanherald.com"
  name   = "fm2._domainkey"
  value  = "fm2.nathanherald.com.dkim.fmhosted.com"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "cname_3_fastmail_domainkey" {
  type   = "CNAME"
  domain = "nathanherald.com"
  name   = "fm3._domainkey"
  value  = "fm3.nathanherald.com.dkim.fmhosted.com"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "txt_keybase_verification" {
  type   = "TXT"
  domain = "nathanherald.com"
  name   = ""
  value  = "keybase-site-verification=4g5_Bp5HvFACfUkKCF6myxa43gFF1l0Ht3dUtd4zbQM"
  ttl    = var.dnsimple_ttl
}
