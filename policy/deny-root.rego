package main

deny[msg] {
  input.kind == "Deployment"
  container := input.spec.template.spec.containers[_]
  container.securityContext.runAsUser == 0
  msg = "Le conteneur s'exécute en tant que root (runAsUser: 0)"
}
