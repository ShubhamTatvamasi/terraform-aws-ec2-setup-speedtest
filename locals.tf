locals {
  region = "us-west-1"

  ami           = "ami-00a0488e9d5582804" # Linux kernal 5.4.0-1017-aws - Ubuntu 20.04 LTS - us-west-1
  key_name      = "shubhamtatvamasi-key"
  instance_type = "t4g.medium"
  vpc_id        = "vpc-5c81213a"

  tags = {
    Name = "EC2 Speed Test"
  }
}
