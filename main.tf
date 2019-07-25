//--------------------------------------------------------------------
// Modules
module "ecs_fargate" {
  source  = "app.terraform.io/Patrick/ecs-fargate/aws"
  version = "0.4"

  alb_ingress_cidrblock = "57.131.174.226/32"
  app_count             = 1
  app_port              = 8080
  name_prefix           = "ppresto-test1"
}
