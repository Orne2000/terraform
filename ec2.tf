
resource "aws_instance" "terraform-demo" {
   ami = var.ami
   instance_type = var.instance-type
   key_name = var.keypair
   tags = {
         Name = "Jenkins"
         Env = "dev"
   }

}

output "publicip" {
    value = aws_instance.terraform-demo.public_ip
    }
output "publicdns" {
    value = aws_instance.terraform-demo.public_dns
}