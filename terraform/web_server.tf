terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "app2" {
  name  = "app2"
  image = "hashicorp/http-echo:1.0"

  command = [
    "-listen", ":5678",
    "-text",  "Hola Mundo "
  ]

  networks_advanced {
    name = docker_network.labnet.name
  }
}

resource "docker_network" "labnet" {
  name = "labnet"
}