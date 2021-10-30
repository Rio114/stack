provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "sandbox" {
  count         = 2
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
  subnet_id     = "subnet-00519e21"

  tags = {
    Name = "${format("sandbox-%02d", count.index + 1)}"
  }
}