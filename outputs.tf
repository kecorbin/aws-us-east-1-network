output "vpc_id" {
  value = module.vpc.vpc_id
}
output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "kms_arn" {
  value = aws_kms_key.a.arn
}


output "database_subnets" {
  value = module.vpc.database_subnets
}

output "database_subnet_group" {
  value = module.vpc.database_subnet_group
}


output "bastion_ip" {
  value = "${aws_eip.bastion.public_ip}"
}

output "bastion_security_group" {
  value = "${aws_security_group.bastionsg.id}"
}
