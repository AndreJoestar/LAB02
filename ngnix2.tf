resource "docker_image" "nginx" {
name = "nignx:alpine"   
}

resource "docker_container" "app2" {
  name = "app2"
  image = mi.web.2
  
  ports{
    internal = 80
    external = 5002
  }
}
