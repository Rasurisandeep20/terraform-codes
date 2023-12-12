provider "google" {
   region="us-west1"
   project="melodic-bolt-407807" 
  
}

terraform {
  backend "gcs" {
    bucket = "gcpdnb1"
    prefix = "lab"
    
  }
}
resource "google_compute_network" "dep1" {
name = "vpc1-rm"
routing_mode =  "GLOBAL"
auto_create_subnetworks = false

}