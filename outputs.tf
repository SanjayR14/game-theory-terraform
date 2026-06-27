output "cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks.endpoint
}

output "cluster_security_group" {
  value = aws_security_group.eks_cluster_sg.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}
