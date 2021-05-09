resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Name = "${var.vpc_name}-${var.environment}-vpc"
    "kubernetes.io/cluster/${var.cluster_name}-${var.environment}" = "shared"
  }
}

output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

/*
output "subnet_id" {
  value = "${aws_subnet.main.id}"
}
*/
