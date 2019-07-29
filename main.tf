//--------------------------------------------------------------------
// Modules
module "aws_instance" {
  source  = "app.terraform.io/Patrick/aws_instance/aws"
  version = "1.5"

  ingress_cidr_block = "157.131.174.226/32"
  name_prefix        = "ppresto-t1"

  output "ip_address" {
    value = "${module.instance_module.public_ip}"
  }

  output "private_key" {
    value = "${module.instance_module.private_key_pem}"
  }

  output "public_key" {
    value = "${module.instance_module.public_key_pem}"
  }

  output "aws_keypair_name" {
    value = "${module.instance_module.aws_keypair_name}"
  }
}
