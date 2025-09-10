resource "docker_image" "nginx" {
name = "nignx:alpine"   
}

resource "docker_container" "app3" {
  name = "app3"
  image = mi.web.3
  
  ports{
    internal = 80
    external = 5003
  }
}
