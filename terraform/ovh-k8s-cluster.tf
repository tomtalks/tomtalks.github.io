locals {
   ovh_cloud_project_kube_hyphen = replace(var.OVH_CLOUD_PROJECT_KUBE_NAME, "_", "-")
   ovh_cloud_project_kube_nodepool = "${local.ovh_cloud_project_kube_hyphen}-pool"
}

resource "ovh_cloud_project_kube" "demo_cluster" {
   service_name = var.SERVICE_NAME
   name         = var.OVH_CLOUD_PROJECT_KUBE_NAME
   region       = var.OVH_REGION
   version      = var.K8S_VERSION
}

resource "ovh_cloud_project_kube_nodepool" "node_pool" {
   service_name  = var.SERVICE_NAME
   kube_id       = ovh_cloud_project_kube.demo_cluster.id
   name          = local.ovh_cloud_project_kube_nodepool //Warning: "_" char is not allowed!
   flavor_name   = var.OVH_FLAVOR_NAME
   desired_nodes = var.NODES
   max_nodes     = var.MAX_NODES
   min_nodes     = var.MIN_NODES
}
