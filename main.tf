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

output "IP Address" {
    value = "${module.instance_module.public_ip}"
}
  
output "Private Key" {
    value = "${module.instance_module.private_key_pem}"
}

output "Public Key" {
    value = "${module.instance_module.public_key_pem}"
}

output "AWS Keypair Name" {
    value = "${module.instance_module.name}"
}
