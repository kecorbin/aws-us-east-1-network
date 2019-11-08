resource "aws_instance" "bastion" {
  ami                         = "ami-0bffdb8276bd2a3cc"
  instance_type               = "t2.micro"
  subnet_id                   = "${module.vpc.public_subnets[0]}"
  key_name                    = "kcorbin-keypair"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["${aws_security_group.bastionsg.id}"]
  tags = {
    Owner = "kcorbin",
    TTL   = -1
  }
}

resource "aws_eip" "bastion" {
  instance = "${aws_instance.bastion.id}"
  vpc      = true

  tags = {
    Name = "kcorbin-elastic-ip"
  }
}
