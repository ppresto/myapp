//--------------------------------------------------------------------
// Modules
module "aws_instance" {
  source  = "app.terraform.io/Patrick/aws_instance/aws"
  version = "1.5"

  ingress_cidr_block = "157.131.174.226/32"
  name_prefix        = "ppresto-t2"
  instance_type      = "t3.large"
}

output "ip_address" {
  value = "${module.aws_instance.public_ip}"
}

output "private_key" {
  value = "${module.aws_instance.private_key_pem}"
}

output "public_key" {
  value = "${module.aws_instance.public_key_pem}"
}

output "aws_keypair_name" {
  value = "${module.aws_instance.aws_keypair_name}"
}
