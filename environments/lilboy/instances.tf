module "talos_vm_1" {
  source = "../../modules/talos-node"
  
  node_name      = "server"
  vm_id          = 101
  cpu_cores      = 2
  memory_size_mb = 2048
  image_path     = "talos-amd-1.3.6.iso"
}

module "talos_vm_2" {
  source = "../../modules/talos-node"
  
  node_name      = "server"
  vm_id          = 102
  cpu_cores      = 3
  memory_size_mb = 6144
  image_path     = "talos-amd-1.3.6.iso"
}

module "talos_vm_3" {
  source = "../../modules/talos-node"
  
  node_name      = "server"
  vm_id          = 103
  cpu_cores      = 3
  memory_size_mb = 6144
  image_path     = "talos-amd-1.3.6.iso"
}
