resource "dnsimple_record" "root_alias" {
  type   = "ALIAS"
  domain = "nathanherald.com"
  name   = ""
  value  = "alias.zeit.co"
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
  value  = "alias.zeit.co"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "mx_1_soverin" {
  type     = "MX"
  priority = 1
  domain   = "nathanherald.com"
  name     = ""
  value    = "mx.soverin.net"
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "mx_2_soverin" {
  type     = "MX"
  priority = 2
  domain   = "nathanherald.com"
  name     = ""
  value    = "mx02.soverin.net"
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "mx_3_soverin" {
  type     = "MX"
  priority = 3
  domain   = "nathanherald.com"
  name     = ""
  value    = "mx03.soverin.net"
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "txt_soverin_verificaton" {
  type   = "TXT"
  domain = "nathanherald.com"
  name   = ""
  value  = "Soverin-site-verification=G7WnxsP7RuSFmUx1"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "txt_soverin_spf" {
  type   = "TXT"
  domain = "nathanherald.com"
  name   = ""
  value  = "v=spf1 +a include:soverin.net ~all"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "txt_soverin_domainkey" {
  type   = "TXT"
  domain = "nathanherald.com"
  name   = "soverin._domainkey"
  value  = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA052NncuQWFqM3Kx2IrnTpYdjbzFiffKgKz9034vD0VS5QKw2rKkW5rsGXLJQhnfWVNUAEV6IY71cfq85Y0ewXUucajIKLF6xZXaVX/yh/u/4PvbQS2QIa5jB60urfIwNiFsxHzz71aHPbtnp/n1MRqgxOYw/eEm/SwfDpi4moLd5n2k6iYBDecNhzodQVdj3X09bD/tYJHGJzI3L7xq0AeuE3buquDGypHMpu3HIvXMafpufFylhmTJwyFfPJdwq7REwlEH0/UerZdnA/kj/3u5ApAVlxmvZwhgUxYfpNRiZnAIlB4AOoJHCeA/xpupT/lImrHWJSKvetkjxm3dKZwIDAQAB"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "txt_keybase_verification" {
  type   = "TXT"
  domain = "nathanherald.com"
  name   = ""
  value  = "keybase-site-verification=4g5_Bp5HvFACfUkKCF6myxa43gFF1l0Ht3dUtd4zbQM"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "txt_now_token" {
  type   = "TXT"
  domain = "nathanherald.com"
  name   = "_now"
  value  = "QmTHxd3KVZWrWGg3WsrS99LkNrsTAuHuNufJfhPnrYFjEo"
  ttl    = var.dnsimple_ttl
}
