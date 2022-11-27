resource "dnsimple_record" "hacker_net_root_alias" {
  type   = "ALIAS"
  domain = "hackerr.net"
  name   = ""
  value  = "fluffy-lolly-7bc09f.netlify.app"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "hackerr_net_caa_email" {
  type     = "CAA"
  priority = 0
  domain   = "hackerr.net"
  name     = ""
  value    = "0 iodef \"mailto:bot@hackerr.net\""
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "hackerr_nett_caa_provider" {
  type     = "CAA"
  priority = 0
  domain   = "hackerr.net"
  name     = ""
  value    = "0 issue \"letsencrypt.org\""
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "hackerr_net_cname_fm1_domainkey" {
  type   = "CNAME"
  domain = "hackerr.net"
  name   = "fm1._domainkey"
  value  = "fm1.hackerr.net.dkim.fmhosted.com"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "hackerr_net_cname_fm2_domainkey" {
  type   = "CNAME"
  domain = "hackerr.net"
  name   = "fm2._domainkey"
  value  = "fm2.hackerr.net.dkim.fmhosted.com"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "hackerr_net_cname_fm3_domainkey" {
  type   = "CNAME"
  domain = "hackerr.net"
  name   = "fm3._domainkey"
  value  = "fm3.hackerr.net.dkim.fmhosted.com"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "hackerr_net_mx_1_fastmail" {
  type     = "MX"
  domain   = "hackerr.net"
  name     = ""
  value    = "in1-smtp.messagingengine.com"
  priority = 10
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "hackerr_net_mx_2_fastmail" {
  type     = "MX"
  domain   = "hackerr.net"
  name     = ""
  value    = "in2-smtp.messagingengine.com"
  priority = 20
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "hackerr_net_txt_fastmail_spf" {
  type   = "TXT"
  domain = "hackerr.net"
  name   = ""
  value  = "v=spf1 include:spf.messagingengine.com ?all"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "hackerr_net_txt_fastmail_dmarc" {
  type   = "TXT"
  domain = "hackerr.net"
  name   = "_dmarc"
  value  = "v=DMARC1; p=none;"
  ttl    = var.dnsimple_ttl
}

