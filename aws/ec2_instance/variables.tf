variable "key_name" {
  description = "SSH key name to acesss ec2 instance"
  default = "my-custom-key"
  sensitive = true
}

variable "ami" {
    description = "AMI ID for the service" 
    default = "ami-01a4f99c4ac11b03c"
    sensitive = true
}

variable "instance_type" {
    description = "Type of instance"
    default = "t2.micro"
    sensitive = true
}