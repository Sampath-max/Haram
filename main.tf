resource "aws_instance" "example" {
  ami           = ami-01a00762f46d584a1
  instance_type = "t3.micro"
  key_pair = "deployer-key"
  tags = {
    Name = "Haram"
  }
}
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "key-pair
}
