resource "proxmox_virtual_environment_file" "talos_1_3_6" {
  content_type = "iso"
  datastore_id = "local"
  node_name    = "server"

  source_file {
    path = "https://github.com/siderolabs/talos/releases/download/v1.3.6/talos-amd64.iso"
    file_name = "talos-amd-1.3.6.iso"
  }
}