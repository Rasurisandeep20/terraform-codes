resource "google_compute_network" "dep1" {
name = "vpc1"
routing_mode =  "GLOBAL"
auto_create_subnetworks = false

}