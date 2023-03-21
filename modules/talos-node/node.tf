resource "proxmox_virtual_environment_vm" "talos_vm" {
  name        = "talos-${var.vm_id}"
  node_name   = var.node_name
  description = "k8s node ${var.vm_id}"
  tags        = ["terraform", "talos", "kubernetes"]

  vm_id     = var.vm_id

  cpu {
    cores = var.cpu_cores
    type = "host"
  }

  memory {
    dedicated = var.memory_size_mb
  }

  initialization {
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
  }

  audio_device {
    enabled = false
  }

  network_device {
    bridge = "vmbr0"
    # mac_address = "C6:E1:BB:33:0E:FF"
  }

  cdrom {
    enabled = true
    file_id = "local:iso/${var.image_path}"
  }

  operating_system {
    type = "l26"
  }

  timeout_shutdown_vm = 1
  
  serial_device {}
}