resource "docker_image" "nginx" {
name = "nignx:1.21"   
}

resource "docker_container" "app2" {
  name = "app1"
  image = mi.web.1
  
  ports{
    internal = 80
    external = 5001
  }
}
