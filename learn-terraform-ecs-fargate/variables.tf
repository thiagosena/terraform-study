variable "aws_region" {
  default     = "us-west-2"
  description = "AWS region where our resources going to create choose"
  #replace the region as suits for your requirement
}

variable "az_count" {
  default     = "2"
  description = "Number of availability zones in above region"
}

variable "ecs_task_execution_role" {
  default     = "myEcsTaskExecutionRole"
  description = "ECS task execution role name"
}

variable "app_image" {
  default     = "nginx:latest"
  description = "Docker image to run in this ECS cluster"
}

variable "app_port" {
  default     = "80"
  description = "Port exposed by the docker image to redirect traffic to"
}

variable "app_count" {
  default     = "2" #choose 2 bcz i have choosen 2 AZ
  description = "Number of docker containers to run"
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  default     = "1024"
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
}

variable "fargate_memory" {
  default     = "2048"
  description = "Fargate instance memory to provision (in MiB)"
}