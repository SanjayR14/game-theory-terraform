resource "aws_eks_node_group" "workers" {

  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "game-theory-workers"
  node_role_arn   = aws_iam_role.eks_node_role.arn

  subnet_ids = [
    aws_subnet.private_subnet_1.id,
    aws_subnet.private_subnet_2.id
  ]

  scaling_config {

    desired_size = 2
    min_size     = 2
    max_size     = 3
  }

  instance_types = ["t3.small"]

  ami_type = "AL2_x86_64"

  capacity_type = "ON_DEMAND"

  depends_on = [

    aws_iam_role_policy_attachment.worker_node_policy,

    aws_iam_role_policy_attachment.cni_policy,

    aws_iam_role_policy_attachment.ecr_policy
  ]

  tags = {
    Name = "game-theory-workers"
  }
}
