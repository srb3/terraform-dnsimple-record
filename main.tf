locals {
  rec_count = var.instance_count # length(keys(var.records))
}

provider "dnsimple" {
  token   = var.oauth_token
  account = var.account
}

resource "dnsimple_record" "create_a" {
  count  = local.rec_count

  domain = var.domain_name
  name   = element(keys(var.records), count.index)
  value  = lookup(var.records, element(keys(var.records), count.index))
  type   = "A"
  ttl    = 60
}
