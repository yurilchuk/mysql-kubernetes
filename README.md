# Configuração do Kubernetes para MySQL

Este repositório fornece os manifestos e scripts necessários para implantar uma instância do MySQL em um cluster Kubernetes.

## Pré-requisitos

- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) instalado.
- Acesso a um cluster Kubernetes configurado.

## Implantação

1. **Configuração do ConfigMap:**
   - Edite o arquivo `mysql-config.yaml` no diretório `manifests/` e ajuste os valores conforme necessário.

2. **Aplicação dos Manifests:**
   - Aplique o ConfigMap:
     ```bash
     kubectl apply -f manifests/mysql-config.yaml
     ```
   - Aplique o Deployment e o Service:
     ```bash
     kubectl apply -f manifests/mysql-deployment.yaml
     ```

3. **Verificação:**
   - Verifique se o pod do MySQL está em execução:
     ```bash
     kubectl get pods -n mysql
     ```

## Solução de Problemas

- **Pod em CrashLoopBackOff:**
  - Verifique os logs do pod:
    ```bash
    kubectl logs <nome-do-pod> -n mysql
    ```
  - Se o motivo for `OOMKilled`, considere aumentar os limites de memória no manifesto do deployment.

## Contribuindo

Sinta-se à vontade para abrir issues ou enviar pull requests com melhorias ou correções.