//--------------------------------------------------------------------
// Modules
module "compute_instance" {
  source  = "app.terraform.io/Patrick/compute-instance/google"
  version = "0.1.4"

  count = 1
  name_prefix = "myapp-dev"
}
