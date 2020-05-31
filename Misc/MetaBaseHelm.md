# Metabase install with Helm

[Metabase](https://www.metabase.com/docs/latest/users-guide/01-what-is-metabase.html) is an open source business intelligence tool. It lets you ask questions about your data, and displays answers in formats that make sense, whether that’s a bar graph or a detailed table.

It can be installed into a kubernetes cluster with [Helm](https://helm.sh/)

## Helm

Install helm via your favorite [package manager](https://helm.sh/docs/intro/install/) e.g.

``` bash
brew install helm
```

Post installation add a stable repository to Helm

``` bash
helm repo add stable https://kubernetes-charts.storage.googleapis.com
```

## Deploy metabase

By default, backend database (H2) is stored inside container, and will be lost after container restart.  To avoid this edit the metabase-config.yaml to point to an available database.  Further instruction is available [here](https://www.metabase.com/docs/latest/operations-guide/running-metabase-on-kubernetes.html)

Create the metabase database on the backend database service

Example deployment script, deploying metabase into a precreate namespace named metabase

``` bash
helm install metabase -f metabase-config.yaml stable/metabase -n metabase
```

Follow the installation progress using watch and when ready use kubectl port-forward to access metabase
