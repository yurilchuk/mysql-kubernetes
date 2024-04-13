# Configuração do Kubernetes para MySql

Este repositório contém a configuração do Kubernetes para o MySQL.

## Pré-requisitos

- Você deve ter o [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) instalado.
- Você deve ter um cluster do Kubernetes configurado e o kubectl deve estar conectado a ele.

## Como usar

1. Baixe o arquivo de configuração do ConfigMap:

```bash
curl -O https://raw.githubusercontent.com/yurilchuk/mysql-kubernetes/main/mysql-config.yaml
```

2. Abra o arquivo mysql-config.yaml e substitua nfs-path, server-ip, storage e root-password pelos valores reais.

3. Aplique o arquivo de configuração do ConfigMap ao seu cluster:

```bash
kubectl apply -f mysql-config.yaml
```

4. Baixe o script de configuração:

```bash
curl -O https://raw.githubusercontent.com/yurilchuk/mysql-kubernetes/main/config.sh
```

5. Torne o script executável:

```bash
chmod +x config.sh
```

6. Execute o script:

```bash
chmod +x config.sh
```

Este script irá baixar o arquivo mysql-kube.yaml do repositório, substituir as variáveis pelo valor do ConfigMap e aplicar o arquivo yaml ao seu cluster.

Contribuindo
Se você encontrar algum problema ou tiver alguma sugestão de melhoria, sinta-se à vontade para abrir uma issue ou enviar um pull request.