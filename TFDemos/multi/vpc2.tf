resource "google_compute_network" "dep2" {
name = "vpc2"
routing_mode =  "GLOBAL"
auto_create_subnetworks = false

}