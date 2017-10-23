variable "cluster_host" {
  type = "string"
}
variable "cluster_username" {
  type = "string"
}
variable "cluster_password" {
  type = "string"
}


provider "helm" {
    kubernetes {
        host     = "${var.cluster_host}"
        username = "${var.cluster_username}"
        password = "${var.cluster_password}"

        client_certificate     = "${file("~/.kube/client-cert.pem")}"
        client_key             = "${file("~/.kube/client-key.pem")}"
        cluster_ca_certificate = "${file("~/.kube/cluster-ca-cert.pem")}"
    }
}

resource "helm_chart" "ntopng" {
  name = "terraform-ntop"
  chart = "/Users/kraney/Documents/workspace/netservice/netservices/ntopng-0.1.0.tgz"
  version = "0.1.0"
  namespace = "kraney"
  set {
    name = "global.cloudlens.acceptEula"
    value = "y"
  }
  set {
    name = "global.cloudlens.apikey"
    value = "GvubVv9XRT5C62xDoCmZh5zBDFKsP3Uk2pt3rtUL"
  }
}
