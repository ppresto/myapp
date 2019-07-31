//--------------------------------------------------------------------
// Modules
module "aws_instance" {
  source  = "app.terraform.io/Patrick/aws_instance/aws"
  version = "1.5"

  ingress_cidr_block = "157.131.174.226/32"
  #ingress_cidr_block = "0.0.0.0/0"
  #name_prefix   = "presto-myapp-dev"
  name_prefix   = "${var.name_prefix}"
  instance_type = "t2.micro"
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
