//--------------------------------------------------------------------
// Modules
module "aws_instance" {
  source             = "app.terraform.io/Patrick/aws_instance/aws"
  version            = "1.5"
  name_prefix        = "${var.name_prefix}"
  instance_type      = "${var.instance_type}"
  ingress_cidr_block = "${var.ingress_cidr_block}"
}

module "compute_instance" {
  source  = "app.terraform.io/Patrick/compute-instance/google"
  version = "0.1.4"
}

output "GCP_Address" {
  value = "${module.compute_instance.addresses}"
}

output "AWS_Address" {
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
