//--------------------------------------------------------------------
// Modules
module "compute_instance" {
  source  = "app.terraform.io/Patrick/compute-instance/google"
  version = "0.1.4"

  count = 3
  name_prefix = "ppdev"
}
