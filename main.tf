//--------------------------------------------------------------------
// Workspace Data
data "terraform_remote_state" "patrick_tf_aws_standard_network" {
  backend = "atlas"
  config {
    address = "https://app.terraform.io"
    name    = "Patrick/tf-aws-standard-network"
  }
}

//--------------------------------------------------------------------
// Modules
module "ec2_instance" {
  source  = "app.terraform.io/Patrick/ec2_instance/aws"
  version = "0.1.4"
  
  name_prefix = "ppresto2-dev"
  vpc_id = "${data.terraform_remote_state.patrick_tf_aws_standard_network.vpc_id}"
  count = 1
}

output "private_key_filename" {
  value = "${module.ec2_instance.private_key_filename}"
}

output "private_key_pem" {
  value = "${module.ec2_instance.private_key_pem}"
}

output "my_nodes_public_ips" {
  value = "${module.ec2_instance.public_ip}"
}

output "my_bastion_public_ips" {
  value = "${module.ec2_instance.bastion_ips_public}"
}