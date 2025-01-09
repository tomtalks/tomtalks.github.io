output "kubeconfig" {
  value = ovh_cloud_project_kube.demo_cluster.kubeconfig
  sensitive = true
}
