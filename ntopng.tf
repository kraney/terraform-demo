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
