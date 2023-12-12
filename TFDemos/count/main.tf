provider "google" {
   region="us-west1"
   project="melodic-bolt-407807" 
  
}
variable "vpclist" {
    type=list
  
}
resource "google_compute_network" "dep1" {
count = length(var.vpclist)
name = var.vpclist[count.index]
routing_mode =  "GLOBAL"
auto_create_subnetworks = false

}