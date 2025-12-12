# Terraform ECS Application Deployment

This project deploys a complete AWS infrastructure using **Terraform**, including:

- VPC with public and private subnets
- Internet Gateway + NAT Gateway
- ALB (Application Load Balancer) in public subnets
- ECS Fargate service running your container in private subnets
- Security groups, IAM roles, task definitions
- Highly available, production-ready architecture

---

## 📁 Project Structure
Terraform-ecs-app/ │ ├── app/ │   └── Dockerfile │ ├── main.tf ├── variables.tf ├── outputs.tf ├── terraform.tfvars.example ├── .gitignore └── README.md

---

## 🚀 Prerequisites

Install the following:

### 1. Terraform  
https://developer.hashicorp.com/terraform/downloads

### 2. AWS CLI  
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

### 3. AWS Account IAM Permissions  
Required permissions:
- VPC
- EC2
- IAM
- ECS
- ECR (optional, only if using ECR)
- ALB / ELB
- CloudWatch Logs

---

## 🔐 AWS Authentication (NO credentials in GitHub)

Authenticate using AWS CLI:

```bash
aws configure

or

export AWS_PROFILE=default

Configure Variables

Copy the provided example file:

cp terraform.tfvars.example terraform.tfvars

Then edit terraform.tfvars:

aws_region   = "ap-south-1"
docker_image = "<YOUR_DOCKER_HUB_IMAGE>"   # Example: username/app:latest
desired_count = 1
vpc_cidr     = "10.0.0.0/16"
app_port     = 5000


---

🏗️ Deploy Infrastructure

Run all commands from the root folder.

1. Initialize Terraform

terraform init

2. Validate configuration

terraform validate

3. Preview deployment

terraform plan -out plan.tfplan

4. Apply the plan

terraform apply "plan.tfplan"

Terraform will create:

VPC, subnets, IGW, NAT

ALB

ECS cluster & service

Task definition

Security groups



---

🌐 Access the Application

After deployment, Terraform outputs:

alb_dns_name = <value>

Open in browser:

http://<alb_dns_name>

You should see your app running.


---

🧹 Destroy Infrastructure

To delete everything:

terraform destroy



