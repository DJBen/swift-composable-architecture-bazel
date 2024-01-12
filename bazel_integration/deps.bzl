"""
This bzl file contains loads dependencies of Swift Composable Architecture.
"""
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    """Executes the given repository rule if it hasn't been executed already.

    Args:
      repo_rule: The repository rule to be executed (e.g., `git_repository`.)
      name: The name of the repository to be defined by the rule.
      **kwargs: Additional arguments passed directly to the repository rule.
    """
    if not native.existing_rule(name):
        repo_rule(name = name, **kwargs)

def swift_composable_architecture_deps(
    workspace_name = "@swift_composable_architecture_bazel",
):
    """
    Install all the dependencies of swift_composable_architecture.

    Args:
          workspace_name: The workspace name of swift_composable_architecture.
          This ensures the deps are referenced from within this repo.
    """

    _maybe(
        http_archive,
        name = "swift_collections",
        build_file = workspace_name + "//:bazel_integration/third_party/swift_collections.BUILD",
        sha256 = "876353021246d0b5a131236400ee723ed783e75c853dcc49640576df83779b54",
        strip_prefix = "swift-collections-1.0.6",
        urls = [
            "https://github.com/apple/swift-collections/archive/refs/tags/1.0.6.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "swift_case_paths",
        build_file = workspace_name + "//:bazel_integration/third_party/swift_case_paths.BUILD",
        sha256 = "9d1b275e53cd766e6ff843304d6309e7b01f221a65a1cd4e8d7d83f8a757115a",
        strip_prefix = "swift-case-paths-1.1.3",
        urls = [
            "https://github.com/pointfreeco/swift-case-paths/archive/refs/tags/1.1.3.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "swift_custom_dump",
        build_file = workspace_name + "//:bazel_integration/third_party/swift_custom_dump.BUILD",
        sha256 = "8ae337987315f6a41ff19aae488f5308adf5f1a940105f0433171eb001010278",
        strip_prefix = "swift-custom-dump-1.1.2",
        urls = [
            "https://github.com/pointfreeco/swift-custom-dump/archive/refs/tags/1.1.2.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "swift_concurrency_extras",
        build_file = workspace_name + "//:bazel_integration/third_party/swift_concurrency_extras.BUILD",
        sha256 = "4115e13407057729aa391ad9a6e0555bad2ef6c86c4015dabab7498bc5388c0a",
        strip_prefix = "swift-concurrency-extras-1.1.0",
        urls = [
            "https://github.com/pointfreeco/swift-concurrency-extras/archive/refs/tags/1.1.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "swift_identified_collections",
        build_file = workspace_name + "//:bazel_integration/third_party/swift_identified_collections.BUILD",
        sha256 = "3e93a5480c883e27037f60e9ea31ca681a4529c32f87d2a65c5e10b04cb1fdb5",
        strip_prefix = "swift-identified-collections-1.0.0",
        urls = [
            "https://github.com/pointfreeco/swift-identified-collections/archive/refs/tags/1.0.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "combine_schedulers",
        build_file = workspace_name + "//:bazel_integration/third_party/combine_schedulers.BUILD",
        sha256 = "e641c4d5e4837c55a7b620a64885f2c31e29102ca982244ad54534579a5eba98",
        strip_prefix = "combine-schedulers-1.0.0",
        urls = [
            "https://github.com/pointfreeco/combine-schedulers/archive/refs/tags/1.0.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "xctest_dynamic_overlay",
        build_file = workspace_name + "//:bazel_integration/third_party/xctest_dynamic_overlay.BUILD",
        sha256 = "7eb78ca92300f78d212a61a646cc12e6772c36234530f616c780263dbb603142",
        strip_prefix = "xctest-dynamic-overlay-1.0.2",
        urls = [
            "https://github.com/pointfreeco/xctest-dynamic-overlay/archive/refs/tags/1.0.2.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "swiftui_navigation",
        build_file = workspace_name + "//:bazel_integration/third_party/swiftui_navigation.BUILD",
        sha256 = "a3be3843b8c82ac0f136469dffcaef815030da15c7027e08f1752b1803e9f643",
        strip_prefix = "swiftui-navigation-1.1.0",
        urls = [
            "https://github.com/pointfreeco/swiftui-navigation/archive/refs/tags/1.1.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "swift_dependencies",
        build_file = workspace_name + "//:bazel_integration/third_party/swift_dependencies.BUILD",
        sha256 = "a9503921f5f314cc85012295343d3ce7ae08e8e96fbd124dcb052b83c6c9c6ca",
        strip_prefix = "swift-dependencies-1.1.5",
        urls = [
            "https://github.com/pointfreeco/swift-dependencies/archive/refs/tags/1.1.5.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "swift_syntax",
        sha256 = "1a516cf344e4910329e3ba28e04f53f457bba23e71e7a4a980515ccc29685dbc",
        strip_prefix = "swift-syntax-509.0.2",
        urls = [
            "https://github.com/apple/swift-syntax/archive/refs/tags/509.0.2.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "swift_clocks",
        build_file = workspace_name + "//:bazel_integration/third_party/swift_clocks.BUILD",
        sha256 = "fe24a62f14eddd3d4a62b778bb2974729b59323d683473086b2b743d8463c321",
        strip_prefix = "swift-clocks-1.0.2",
        urls = [
            "https://github.com/pointfreeco/swift-clocks/archive/refs/tags/1.0.2.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "swift_composable_architecture",
        build_file = workspace_name + "//:swift_composable_architecture.BUILD",
        sha256 = "e9c9b6738f89761f1f60eb4833d4997d7db7b80bba55903147fd79e196b29a70",
        strip_prefix = "swift-composable-architecture-1.6.0",
        urls = [
            "https://github.com/pointfreeco/swift-composable-architecture/archive/refs/tags/1.6.0.tar.gz",
        ],
    )
