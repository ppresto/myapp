//--------------------------------------------------------------------
// Modules
module "ecs_fargate" {
  source  = "app.terraform.io/Patrick/ecs-fargate/aws"
  version = "0.4.0"

  alb_ingress_cidrblock = "57.131.174.226/32"
  app_count             = 2
  app_image             = "nginxdemos/hello"
  app_port              = 8080
  name_prefix           = "pp-myapp-ecs"
}

output "ip_address" {
  value = "${module.ecs_fargate.alb_hostname}"
}
