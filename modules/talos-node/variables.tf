variable "node_name" {
    description = "Server node on which the VM will be created"
    type        = string
}

variable "vm_id" {
    description = "ID for the VM on the server node"
    type        = string
}

variable "cpu_cores" {
    description = "Number of CPU cores to assign to this node"
    type        = number
}

variable "memory_size_mb" {
    description = "The path and name of the VM image"
    type        = number
}

variable "image_path" {
    description = "The path and name of the VM image"
    type        = string
}
