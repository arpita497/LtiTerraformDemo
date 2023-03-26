module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name = "LTIterraform-module-instance"

  ami                    = "ami-08f0bc76ca5236b20"
  instance_type          = "t2.micro"
  key_name               = "new-keypair"
  monitoring             = true
  vpc_security_group_ids = ["sg-09d0c7268bedc251a"]
  subnet_id              = "subnet-0833359ae17b1d644"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
