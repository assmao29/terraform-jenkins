## Ec2 instance 

resource "aws_instance" "ec2-jens" {
  ami                    = "ami-0bb4c991fa89d4b9b"
  vpc_security_group_ids = [aws_security_group.sg1.id]
  instance_type          = "t2.micro"
  key_name               = "privatekeypair"
  subnet_id              = aws_subnet.public_subnet1.id
  user_data              = file("install.sh")
  tags = {
    Name = "Jenkins instance"
    env  = "Dev"
  }

}
