data "aws_route53_zone" "main" {
  name = var.domain_name
}

# SPF Record
resource "aws_route53_record" "spf" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = var.domain_name
  type    = "TXT"
  ttl     = 300
  records = ["v=spf1 include:amazonses.com ~all"]
}

# DKIM Records (3 CNAMEs)
resource "aws_route53_record" "dkim" {
  count   = 3
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "${element(var.dkim_tokens, count.index)}._domainkey"
  type    = "CNAME"
  ttl     = 300
  records = ["${element(var.dkim_tokens, count.index)}.dkim.amazonses.com"]
}

# DMARC Record
resource "aws_route53_record" "dmarc" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "_dmarc"
  type    = "TXT"
  ttl     = 300
  # p=quarantine moves failures to Junk; p=none is for monitoring only.
  records = ["v=DMARC1; p=quarantine; rua=mailto:${var.admin_email}"]
}