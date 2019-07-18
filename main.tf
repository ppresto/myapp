//--------------------------------------------------------------------
// Modules
module "instance_module" {
  source  = "app.terraform.io/ppresto_ptfe/instance-module/aws"
  version = "1.0.3"

  egress_cidr_block = "0.0.0.0/0"
  ingress_cidr_block = "157.131.174.226/32"
  instance_type = "t2.micro"
  namespace = "ppresto"
}

output "ip_address" {
    value = "${module.instance_module.public_ip}"
}
  
output "private_key" {
    value = "${module.instance_module.private_key_pem}"
}

output "public_key" {
    value = "${module.instance_module.public_key_pem}"
}

output "AWS_keypair_name" {
    value = "${module.instance_module.name}"
}
