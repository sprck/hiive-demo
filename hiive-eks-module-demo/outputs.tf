# IAM outputs
output "eks_role_arn" {
  value = aws_iam_role.eks.arn
}

output "node_role_arn" {
  value = aws_iam_role.node.arn
}

# VPC outputs
output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "eks_node_sg_id" {
  value = aws_security_group.eks_nodes.id
}

output "eks_cluster_sg_id" {
  value = aws_security_group.eks_cluster.id
}

# EKS outputs
output "cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "cluster_certificate_authority" {
  value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

