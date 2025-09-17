resource "docker_container" "nginx_app2" {
  name = "nginx_app2"
  image = "nginx:stable-pearl"

  networks_advanced {
    name = docker_network.app_net.name
  }
  ports{
    internal = 80
    external = 3002
  }
  
}