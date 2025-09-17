resource "docker_container" "nginx_app3" {
  name = "nginx_app3"
  image = "nginx:stable-pearl"

  networks_advanced {
    name = docker_network.app_net.name
  
  ports{
    internal = 80
    external = 3003
  }
}
}
