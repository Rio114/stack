provider "aws"{
    region = "ap-northeast-1"
}

resource "aws_instance" "sandbox" {
  count         = 1
  ami           = "ami-06cd52961ce9f0d85"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0a39d7cfb15f41cc2"

  tags = {
    Name = "${format("sandbox-%02d", count.index + 1)}"
  }
}