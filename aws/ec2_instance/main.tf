resource "tls_private_key" "ec2_private_key" {
    algorithm = "RSA"
    rsa_bits = 4096
}

resource "aws_key_pair" "ec2_generated_key" {
    key_name = var.key_name
    public_key = tls_private_key.ec2_private_key.public_key_openssh
}

resource "aws_instance" "helloworld_infra" {
    ami = var.ami
    instance_type = var.instance_type
    key_name   = aws_key_pair.ec2_generated_key.key_name

    tags = {
        Name = "FlaskProjectInstance"
    }    
}
