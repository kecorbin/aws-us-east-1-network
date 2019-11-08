data "aws_route53_zone" "selected" {
  name         = var.route53_hosted_zone_name
  private_zone = false
}

resource "aws_route53_record" "bastion" {
  zone_id = "${data.aws_route53_zone.selected.zone_id}"
  name    = "bastion"
  type    = "A"
  ttl     = "300"
  records = ["${aws_eip.bastion.public_ip}"]
}
