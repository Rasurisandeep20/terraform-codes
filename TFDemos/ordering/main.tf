provider "google" {
   region="us-west1"
   project="melodic-bolt-407807" 
  
}
resource "google_compute_network" "dep1" {
name = "vpc1"
routing_mode =  "GLOBAL"
auto_create_subnetworks = false
depends_on = [ google_compute_network.dep2 ]

}
resource "google_compute_network" "dep2" {
name = "vpc2"
routing_mode =  "GLOBAL"
auto_create_subnetworks = false
depends_on = [ google_compute_network.dep3 ]

}
resource "google_compute_network" "dep3" {
name = "vpc3"
routing_mode =  "GLOBAL"
auto_create_subnetworks = false
depends_on = [ google_compute_network.dep4 ]

}
resource "google_compute_network" "dep4" {
name = "vpc4"
routing_mode =  "GLOBAL"
auto_create_subnetworks = false

}