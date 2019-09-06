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
  version = "0.1.5"
  
  name_prefix = "ppresto2-dev"
  subnet_id = "${data.terraform_remote_state.patrick_tf_aws_standard_network.subnet_private_ids[0]}"
  count = 0
}

output "private_key_filename" {
  value = "${module.ec2_instance.private_key_filename}"
}

output "private_key_pem" {
  value = "${module.ec2_instance.private_key_pem}"
}

output "my_nodes_public_ips" {
  value = "${module.ec2_instance.my_nodes_public_ips}"
}

output "my_bastion_public_ips" {
  value = "${module.ec2_instance.my_bastion_public_ips}"
}