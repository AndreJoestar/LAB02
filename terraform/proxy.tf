resource "docker_container" "proxy" {
    name  = "proxy"
    image = "nginx:stable-pearl"
    
    networks_advanced {
        name = docker_network.app_net.name
    }
    
    ports {
        internal = 80
        external = 8080
    }
    
    volumes {
        host_path      = "${path.module}/nginx.conf"
        container_path = "/etc/nginx/nginx.conf"
    }
    
    depends_on = [
        docker_container.nginx_app1,
        docker_container.nginx_app2,
        docker_container.nginx_app3
    ]
}