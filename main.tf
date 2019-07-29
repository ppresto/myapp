//--------------------------------------------------------------------
// Modules
module "aws_instance" {
  source  = "app.terraform.io/Patrick/aws_instance/aws"
  version = "1.5"

  ingress_cidr_block = "157.131.174.226/32"
  name_prefix        = "ppresto-t1"
}
