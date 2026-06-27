resource "aws_eks_cluster" "eks" {

  name     = var.cluster_name
  role_arn = aws_iam_role.eks_cluster_role.arn

  version = "1.31"

  vpc_config {

    subnet_ids = [
      aws_subnet.public_subnet_1.id,
      aws_subnet.public_subnet_2.id
    ]

    security_group_ids = [
      aws_security_group.eks_cluster_sg.id
    ]

    endpoint_private_access = false
    endpoint_public_access  = true
  }

  depends_on = [

    aws_iam_role_policy_attachment.eks_cluster_policy
  ]

  tags = {

    Name = var.cluster_name
  }
}
