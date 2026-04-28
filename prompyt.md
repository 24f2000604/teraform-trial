
Architecture Requirements
1. Networking Layer
Create a VPC 
2 Public Subnets (different Availability Zones) 
2 Private Subnets 
Internet Gateway + Route Tables 
NAT Gateway (for private subnet access)

2. Compute Layer
Launch EC2 instances in private subnets 
Use a Launch Template 
Install a simple web server (Apache/Nginx via user_data) 

3. Load Balancing
Create an Application Load Balancer (ALB) 
Route traffic to EC2 instances 
Health checks must be configured 

4. Security
Security Groups: 
ALB: Allow HTTP (80) 
EC2: Allow traffic only from ALB 
No direct public access to EC2 instances


Terraform Requirements (Important)
🔹 1. Modularization (MANDATORY)
Split your code into reusable modules:
vpc/ 
ec2/ 
alb/ 
Each module must have:
main.tf 
variables.tf 
outputs.tf 

🔹 2. Variables (MANDATORY)
Use variables for:
Region 
Instance type 
AMI ID 
CIDR blocks 
Subnet ranges 
Desired capacity 
Use a terraform.tfvars file.

🔹 3. Outputs
Export:
ALB DNS name 
VPC ID 
Subnet IDs 

🔹 4. State Management
Configure remote backend using: 
S3 bucket 
DynamoDB for state locking

Expected Folder Structure
terraform-project/│├── main.tf├── variables.tf├── outputs.tf├── terraform.tfvars│├── modules/│   ├── vpc/│   ├── ec2/│   ├── alb/

Expected Outcome
After terraform apply:
A working ALB DNS URL serving a web page 
EC2 instances running in private subnets 
Infrastructure is modular and reusable


