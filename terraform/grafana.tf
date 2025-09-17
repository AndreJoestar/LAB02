resource "docer_container" "grafana" {
    name  = "grafana"
    image = "grafana/grafana:main-ubuntu"
    networks_advanced {
      name = docker_network.monitor_net.name
}
}