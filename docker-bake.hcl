group "default" {
  targets = ["drone-runner-docker"]
}

target "drone-runner-docker" {
  context = "."
  dockerfile = "docker/Dockerfile"
  tags = ["yusiwen/drone-runner-docker:1.8.4"]
  args = {
  }
  no-cache = false
  platforms = ["linux/amd64", "linux/arm64"]
}
