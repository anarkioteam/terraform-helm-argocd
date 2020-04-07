# terraform-helm-argocd

A Terraform module for deploying [argocd](https://argocd.io/) via Helm.

## Requirements

| Name      | Version   |
| --------- | --------- |
| terraform | ~> 0.12.0 |
| helm      | ~> 1.1    |
| template  | ~> 2.1    |

## Providers

| Name       | Version |
| ---------- | ------- |
| aws        | n/a     |
| helm       | ~> 1.1  |
| kubernetes | n/a     |

## Inputs

| Name                                   | Description                                                  | Type     | Default         | Required |
| -------------------------------------- | ------------------------------------------------------------ | -------- | --------------- | :------: |
| argocd_helm_chart_version              | argocd helm chart version to use                             | `string` | `""`            |    no    |
| argocd_ingress_class                   | Ingress class to use for argocd                              | `string` | `"nginx"`       |    no    |
| argocd_ingress_enabled                 | Enable/disable argocd ingress                                | `bool`   | `true`          |    no    |
| argocd_ingress_ssl_passthrough_enabled | Enable/disable SSL passthrough for ingresss                  | `string` | `"true"`        |    no    |
| argocd_ingress_tls_acme_enabled        | Enable/disable acme TLS for ingress                          | `string` | `"true"`        |    no    |
| argocd_ingress_tls_secret_name         | Secret name for argocd TLS cert                              | `string` | `"argocd-cert"` |    no    |
| argocd_server_host                     | Hostname for argocd (will be utilised in ingress if enabled) | `string` | n/a             |   yes    |
| eks_iam_argocd_role_name               | IAM EKS service account role name for Argo CD                | `string` | n/a             |   yes    |
| kubernetes_argocd_namespace            | Namespace to release argocd into                             | `string` | `"argocd"`      |    no    |

## Outputs

No output.
