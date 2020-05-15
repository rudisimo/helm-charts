# Helm Charts

![Github Pages](https://github.com/rudisimo/helm-charts/workflows/Github%20Pages/badge.svg?branch=master)

This repository contains curated application definitions for Kubernetes Helm. For more information about installing and using Helm, see its
[README.md](https://github.com/kubernetes/helm/tree/master/README.md). To get a quick introduction to Charts see this [chart document](https://github.com/kubernetes/helm/blob/master/docs/charts.md).

## How do I install these charts?

Run the following commands to add the repository to Helm, and install a `hello-world` application:
```
helm repo add rudisimo http://rudisimo.github.io/helm-charts
helm install hello-world rudisimo/hello-world
```

For more information on using Helm, refer to the [Helm's documentation](https://github.com/kubernetes/helm#docs).