module "ec2" {
  source = "./modules/ec2"
  ami_value = var.ami_id
  instance_type_value = var.instance_type
  subnet_id_value = var.subnet_id
}
