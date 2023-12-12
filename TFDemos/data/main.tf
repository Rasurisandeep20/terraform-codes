provider "google" {
   region="us-west1"
   project="melodic-bolt-407807" 
  
}
data "google_compute_network" "dep1" {
name="vpc1"
}

data "google_project" "dep2" {
    project_id = "melodic-bolt-407807"
  
}
output "out_var1" {
    value =data.google_compute_network.dep1.id
}
output "out_var2" {
    value = data.google_project.dep2.number
  
}