resource "docker_image" "redis" {
  name = "redis"
  image = "redis:latest"
}