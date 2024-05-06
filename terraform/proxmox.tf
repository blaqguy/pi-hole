resource "proxmox_vm_qemu" "resource-name" {
  name        = "k8s-master"
  desc        = "Kubernetes Master"
  vmid        = 100
  target_node = "hp-server01"
  agent       = 1
  clone       = "ubuntu-24-cloud-init"
  cores       = 2
  sockets     = 1
  memory      = 4096
  network {
    bridge = "vmbr0"
    model  = "virtio"
  }
  disk {
    size    = "30G"
    storage = "local-lvm"
    type    = "scsi"
  }
}