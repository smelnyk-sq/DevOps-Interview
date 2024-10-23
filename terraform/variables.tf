variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Replace with your desired AMI ID
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t2.micro"
}

variable "name" {
  description = "Ec2 instance name"
  type        = string
  default = ""
}