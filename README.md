# Helm Charts

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Release](https://github.com/rudisimo/helm-charts/workflows/Release/badge.svg)](https://github.com/rudisimo/helm-charts/actions/workflows/release.yaml)

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repository as follows:

```shell
helm repo add rudisimo http://rudisimo.github.io/helm-charts
helm repo update
```

You can then run `helm search repo rudisimo` to see the available charts.

**Note:** To learn how to install a specific chart, follow the instructions in its `README.md` file.

## License

Licensed under the [MIT license](https://github.com/rudisimo/helm-charts/blob/master/LICENSE.txt).
