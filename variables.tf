variable "aws_region" {
  description = "AWS region where the infrastructure will be deployed."
  type        = string
  default     = "ap-south-1"
}

variable "docker_image" {
  description = "Docker image to run in ECS. Example: dockerhub_username/image:tag"
  type        = string
}

variable "desired_count" {
  description = "Number of ECS service tasks to run."
  type        = number
  default     = 1
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "app_port" {
  description = "Port on which the application runs inside the container."
  type        = number
  default     = 5000
}
