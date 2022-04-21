provider "aws" {
  region = local.region
}

resource "aws_instance" "agw" {
  ami           = local.ami
  instance_type = local.instance_type
  key_name      = local.key_name
  tags          = local.tags

  security_groups = [
    aws_security_group.allow_ssh.name
  ]

  connection {
    type        = "ssh"
    user        = "ubuntu"
    host        = aws_instance.agw.public_ip
    private_key = file("~/.ssh/id_rsa")
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Hello, Terraform!' > /home/ubuntu/index.html"
    ]
  }
}
