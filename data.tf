data "aws_iam_role" "argocd" {
  name = var.eks_iam_argocd_role_name
}

data "helm_repository" "argo" {
  name = "argo"
  url  = "https://argoproj.github.io/argo-helm"
}
