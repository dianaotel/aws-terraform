
provider "aws" {
  access_key = "${var.access-key}"
  secret_key = "${var.secret-key}"
  region     = "${var.region}"
}

resource "aws_instance" "diana-terraform" {
  ami           = "${var.ami}"
  instance_type = "${var.instance-type}" 
  key_name      = "${var.ec2-key}"
  user_data = "${file("./docker-config.sh")}"
  user_data = "${file("./jenkins-config.sh")}"
  vpc_security_group_ids = ["${var.sg-id}"] 

  tags {
    Name = "diana-terraform"
  }
}


