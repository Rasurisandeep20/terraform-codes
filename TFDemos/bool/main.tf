provider "google" {
   region="us-west1"
   project="melodic-bolt-407807" 
  
}
variable "create_vpc" {
    type = bool
  
}

resource "google_compute_network" "dep1" {
 count = var.create_vpc ? 1:0
 name = "vpc1"
 routing_mode = "GLOBAL"
 auto_create_subnetworks = false

}
resource "google_compute_network" "dep2" {
 count = var.create_vpc ? 0:1
 name = "vpc2"
 routing_mode = "GLOBAL"
 auto_create_subnetworks = false

}
