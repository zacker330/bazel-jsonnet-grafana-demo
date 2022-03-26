load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository", "git_repository")

git_repository(
  name = "io_bazel_rules_jsonnet",
  remote = "https://github.com/bazelbuild/rules_jsonnet.git",
  commit = "d51e0a75a38762d0441ff1fdea3b4816ec537546"
)

load("@io_bazel_rules_jsonnet//jsonnet:jsonnet.bzl", "jsonnet_repositories")

jsonnet_repositories()

load("@google_jsonnet_go//bazel:repositories.bzl", "jsonnet_go_repositories")

jsonnet_go_repositories()

load("@google_jsonnet_go//bazel:deps.bzl", "jsonnet_go_dependencies")

jsonnet_go_dependencies()


new_git_repository(
  name = "grafonnet-lib",
  remote = "https://github.com/grafana/grafonnet-lib.git",
  commit = "6db00c292d3a1c71661fc875f90e0ec7caa538c2",
  build_file = "//:grafonnet-lib.BUILD.bazel"
)