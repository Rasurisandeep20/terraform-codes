provider "google" {
   region="us-west1"
   project="melodic-bolt-407807" 
  
}
resource "google_compute_network" "dep1" {
name = "vpc1"
routing_mode =  "GLOBAL"
auto_create_subnetworks = false

}

output "out_var1" {
   value = google_compute_network.dep1.id
  
}