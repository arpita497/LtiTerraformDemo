module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name = "ltiinstance"

  ami                    = "ami-08f0bc76ca5236b20"
  instance_type          = "t2.micro"
  key_name               = "sydney-keypair"
  monitoring             = true
  vpc_security_group_ids = ["sg-09d0c7268bedc251a"]
  subnet_id              = "subnet-0d6190df283450c4e"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
