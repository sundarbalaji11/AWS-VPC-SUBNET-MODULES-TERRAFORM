resource "aws_subnet" "private" {
  vpc_id                   = var.vpc_id
  cidr_block               = element(var.private_subnets_cidr, count.index)
  availability_zone        = element(var.availability_zones_private, count.index)
  count                    = length(var.private_subnets_cidr)

  tags = {

        "kubernetes.io/cluster/${var.cluster_name}-${var.environment}" = "shared"
        "kubernetes.io/role/internal-elb" = 1
      "Name"   = "fargate-subnet-${count.index + 1}-${var.environment}"
    "state"  = "private"
  }
}
