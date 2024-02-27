provider "aws" {
  region = "eu-north-1"
}

resource "aws_eks_node_group" "app" {
  cluster_name = "vi-home-test"
  node_group_name = "app"

  node_role_arn = "arn:aws:iam::851725552187:role/devops-assignment-eks-node-group-role-NodeGroupRole-ErMFK0EqUk0X"

  scaling_config {
    min_size = 2
    max_size = 4
    desired_size = 2
  }

  instance_types = ["t3.medium"]

  subnet_ids = [
    "subnet-04408b1ba3c8c0d16",
    "subnet-09b68b28fbf6881f4",
    "subnet-07685e7777531a144"
  ]

  disk_size = 20
  ami_type  = "AL2_x86_64"
}

