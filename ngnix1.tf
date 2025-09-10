resource "docker_image" "nginx" {
name = "nignx:alpine"   
}

resource "docker_container" "app1" {
  name = "app1"
  image = mi.web.1
  
  ports{
    internal = 80
    external = 5001
  }
}
