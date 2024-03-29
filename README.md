# [Swift Composable Architecture](https://github.com/pointfreeco/swift-composable-architecture) Bazel Integration

This repo provides a bazel target for [Swift Composable Architecture](https://github.com/pointfreeco/swift-composable-architecture).

## Usage
1. Setup `build_bazel_rules_swift`. You may refer to the `WORKSPACE.bazel` file for example.
2. Go to the [Releases page](https://github.com/DJBen/swift-composable-architecture-baze/releases), and grab the `http_archive` snippet to paste to your `WORKSPACE` file.
3. Reference the dependency as

```bzl
deps = [
    "@swift_composable_architecture//:ComposableArchitecture",
]
```
You may follow the `BUILD` file example in `IntegrationTest/` for details.
