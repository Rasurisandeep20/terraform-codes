provider "google" {
   region="us-west1"
   project="melodic-bolt-407807" 
  
}
variable "stname" {
  type = string
}

resource "google_storage_bucket" "dep1" {
  name = var.stname
  location = "us-west1"
  
}