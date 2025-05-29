terraform {
  required_providers {
    minikube = {
        source = "scott-the-programmer/minikube"
        version = "0.5.1"
    }
  }
}

provider "minikube" {
  kubernetes_version = "v1.33.0"
}

resource "minikube_cluster" "minikube_docker" {
    driver = "docker"
    cluster_name = "event-booking-cluster"
    addons = ["default-storageclass", "storage-provsioner"]
}