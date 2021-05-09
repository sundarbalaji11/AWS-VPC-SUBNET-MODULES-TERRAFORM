variable "environment" {
#    description = "Environment name"
     default = "Dev"
}

variable "vpc_cidr" {
#    description = "Cidr value of vpc"
     default = "10.0.0.0/16"
}

variable "vpc_name" {
#    description = "Name of vpc"
     default = "eks_vpc"
}

variable "cluster_name" {
#    description = "Name of cluster"
     default = "alto-eks"
}

variable "vpc_id" {}
