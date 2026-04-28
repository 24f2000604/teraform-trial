aws_region = "us-east-1"
availability_zones = ["us-east-1a", "us-east-1b"]
vpc_cidr = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.11.0/24", "10.0.12.0/24"]
instance_type = "t3.micro"
ami_id = "ami-0c02fb55956c7d316"
desired_capacity = 2
common_tags = {
  Project = "devops-assignment"
  Owner = "student"
}
