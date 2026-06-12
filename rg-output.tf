/*output "privateip" {
  description = "The allocated Azure Public IP address."
  value       = azurerm_network_interface.web_nic.private_ip_address
}
output "vm_public_ip" {
  description = "showing the public ip address of the vm"
  value       = azurerm_public_ip.web_vm_publicip.ip_address
}
*/


output "vm_private_ips" {

  description = "Private IP addresses of all Linux VMs"
 
  value = {

    for vm_name, nic in azurerm_network_interface.web_nic :

    vm_name => nic.private_ip_address

  }

}
 