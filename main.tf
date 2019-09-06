//--------------------------------------------------------------------
// Modules
module "ec2_instance" {
  source  = "app.terraform.io/Patrick/ec2_instance/aws"
  version            = "0.1.0"
  name_prefix        = "${var.name_prefix}"
  instance_type      = "${var.instance_type}"
  ingress_cidr_block = "${var.ingress_cidr_block}"
}

output "private_key_filename" {
  value = "${module.ec2_instance.private_key_filename}"
}
output "private_key_pem" {
  value = "${module.ec2_instance.private_key_pem}"
}
output "AWS_Address" {
  value = "${module.ec2_instance.public_ip}"
}

output "aws_keypair_name" {
  value = "${module.ec2_instance.aws_keypair_name}"
}

