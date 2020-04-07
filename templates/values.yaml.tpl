installCRDs: false

server:
  ingress:
    enabled: ${ argocd_ingress_enabled }
    annotations:
      kubernetes.io/ingress.class: ${ argocd_ingress_class }
      kubernetes.io/tls-acme: "${ argocd_ingress_tls_acme_enabled }"
      nginx.ingress.kubernetes.io/ssl-passthrough: "${ argocd_ingress_ssl_passthrough_enabled }"
    hosts:
      - ${ argocd_server_host }
    tls:
      - secretName: argocd-secret
        hosts:
          - ${ argocd_server_host }

  config:
    url: https://${ argocd_server_host }

  serviceAccount:
    annotations:
      eks.amazonaws.com/role-arn: ${ eks_iam_argocd_role_arn }
