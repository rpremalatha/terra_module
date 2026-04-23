module "prod_instance_module" {
  source = "../module"

  ami            = var.ami
  keyName        = var.keyName
  sgName         = var.sgName
  myInstanceName = var.myInstanceName 
  instanceType   = var.instanceType    
  cidr1          = var.cidr1
}