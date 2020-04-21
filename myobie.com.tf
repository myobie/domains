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

resource "dnsimple_record" "myobie_com_www_cname" {
  type   = "CNAME"
  domain = "myobie.com"
  name   = "www"
  value  = "alias.zeit.co"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_mx_1_soverin" {
  type     = "MX"
  priority = 1
  domain   = "myobie.com"
  name     = ""
  value    = "mx.soverin.net"
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_mx_2_soverin" {
  type     = "MX"
  priority = 2
  domain   = "myobie.com"
  name     = ""
  value    = "mx02.soverin.net"
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_mx_3_soverin" {
  type     = "MX"
  priority = 3
  domain   = "myobie.com"
  name     = ""
  value    = "mx03.soverin.net"
  ttl      = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_txt_soverin_verificaton" {
  type   = "TXT"
  domain = "myobie.com"
  name   = ""
  value  = "Soverin=2gPmdBHiez5h58uy"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_txt_soverin_spf" {
  type   = "TXT"
  domain = "myobie.com"
  name   = ""
  value  = "v=spf1 +a include:soverin.net ~all"
  ttl    = var.dnsimple_ttl
}

resource "dnsimple_record" "myobie_com_txt_soverin_domainkey" {
  type   = "TXT"
  domain = "myobie.com"
  name   = "soverin._domainkey"
  value  = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmuU0yFGQxRa6AJAIqzY75z6t3VW2UMIjpiJQzv0ugB2tkKw555MJwO4AiFcEdQYsuCJJyqD+pwAHa2Y6nXS8y6+yutlP2PoZgSoERaPBbjytLxQUwRKoX/jOg1xJ9V1d4yQsP1GJtJGp+gCrLLsowxv0HlZrXMsKkSXMzE9idqHVubWy/uYRKVEi15ROIOKz6Y1B1Jj6XoYo88WTPy4cn8Mvd93Ts3XzE9eYTLMsp6hQrJK/Ou2PKoK2zA2yf0Y0gasqb0slI8miIhNiVF815skQ7Tvu5AX0T00jh0rMrILJSqjkitKbqq42FUtqNfCgXv8IrCdqjbxCkgMpc6Xx3QIDAQAB"
  ttl    = var.dnsimple_ttl
}

# resource "dnsimple_record" "myobie_com_txt_now_token" {
#   type   = "TXT"
#   domain = "myobie.com"
#   name   = "_now"
#   value  = ""
#   ttl    = var.dnsimple_ttl
# }
