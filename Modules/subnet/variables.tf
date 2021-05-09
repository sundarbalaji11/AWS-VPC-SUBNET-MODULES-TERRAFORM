variable "private_subnets_cidr" {
#    description = "List of private subnets cidr"
     type = list
     default = ["10.0.2.0/24","10.0.5.0/24"]
}

variable "availability_zones_private" {
#    description = "List of availability zones of private subnets"
     type = list(string)
     default = ["ap-south-1a","ap-south-1b"]
}

variable "environment" {
#    description = "Environment name"
     default = "Dev"
}

variable "cluster_name" {
#    description = "Name of cluster"
     default = "alto-eks"
}

variable "vpc_id" {}
