module "alb-public" {
    source = "./vendor/modules/alb"   # path created after running terrfile -f command 
    ENV = var.ENV
    ALB_NAME = "roboshop-public"
    INTERNAL = false

}

module "alb-private" {
  source = "./vendor/modules/alb"   # path created after running terrfile -f command 
    ENV = var.ENV
    ALB_NAME = "roboshop-private"
    INTERNAL = true
}