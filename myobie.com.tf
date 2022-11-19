resource "dnsimple_record" "myobie_com_root_alias" {
  type   = "ALIAS"
  domain = "myobie.com"
  name   = ""
  value  = "alias.zeit.co"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_caa_email" {
  type     = "CAA"
  priority = 0
  domain   = "myobie.com"
  name     = ""
  value    = "0 iodef \"mailto:me@nathanherald.com\""
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_caa_provider" {
  type     = "CAA"
  priority = 0
  domain   = "myobie.com"
  name     = ""
  value    = "0 issue \"letsencrypt.org\""
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_cname_fm1_domainkey" {
  type   = "CNAME"
  domain = "myobie.com"
  name   = "fm1._domainkey"
  value  = "fm1.myobie.com.dkim.fmhosted.com"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_cname_fm2_domainkey" {
  type   = "CNAME"
  domain = "myobie.com"
  name   = "fm2._domainkey"
  value  = "fm2.myobie.com.dkim.fmhosted.com"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_cname_fm3_domainkey" {
  type   = "CNAME"
  domain = "myobie.com"
  name   = "fm3._domainkey"
  value  = "fm3.myobie.com.dkim.fmhosted.com"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_www_cname" {
  type   = "CNAME"
  domain = "myobie.com"
  name   = "www"
  value  = "alias.zeit.co"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_mx_1_fastmail" {
  type     = "MX"
  domain   = "myobie.com"
  name     = ""
  value    = "in1-smtp.messagingengine.com"
  priority = 10
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_mx_2_fastmail" {
  type     = "MX"
  domain   = "myobie.com"
  name     = ""
  value    = "in2-smtp.messagingengine.com"
  priority = 20
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_txt_zeit" {
  type   = "TXT"
  domain = "myobie.com"
  name   = ""
  value  = "ALIAS for alias.zeit.co"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_txt_fastmail_spf" {
  type   = "TXT"
  domain = "myobie.com"
  name   = ""
  value  = "v=spf1 include:spf.messagingengine.com ?all"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_txt_fastmail_dmarc" {
  type   = "TXT"
  domain = "myobie.com"
  name   = "_dmarc"
  value  = "v=DMARC1; p=none;"
  ttl    = var.dnsimple_ttl
}

