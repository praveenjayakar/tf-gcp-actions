# Existing outputs from Part 1...

# VM outputs
output "vm_name" {
  value       = google_compute_instance.main_vm.name
  description = "Name of the created VM instance"
}

output "vm_internal_ip" {
  value       = google_compute_instance.main_vm.network_interface[0].network_ip
  description = "Internal IP address of the VM"
}

output "vm_zone" {
  value       = google_compute_instance.main_vm.zone
  description = "Zone where the VM is deployed"
}

output "vm_service_account" {
  value       = google_service_account.vm_service_account.email
  description = "Service account email used by the VM"
}

output "ssh_command" {
  value       = "gcloud compute ssh ${google_compute_instance.main_vm.name} --zone=${var.zone} --project=${var.project_id}"
  description = "Command to SSH into the VM instance"
}

# NAT gateway output
output "nat_gateway_name" {
  value       = google_compute_router_nat.main_nat.name
  description = "Name of the Cloud NAT gateway"
}