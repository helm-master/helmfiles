# helmfiles

## Prerequisites

### Install kubectl

### Install helm

### Install helmfile

Get latest release at https://github.com/roboll/helmfile/releases/download/v0.132.2

### Install helm plugins

```
helm plugin install https://github.com/aslafy-z/helm-git --version 0.8.1
helm plugin install https://github.com/databus23/helm-diff
helm plugin install https://github.com/futuresimple/helm-secrets
```

## Folder structure

Each folder contains a helmfile named **<folder>-helmfile.yaml** that holds the actual subsystem helmfile and a file named **"helmfile.yaml"** with a possible example deployment.
