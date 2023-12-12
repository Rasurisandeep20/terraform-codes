provider "google" {
   region="us-west1"
   project="melodic-bolt-407807" 
  
}
resource "google_storage_bucket" "dep2" {
  name = "dnblab1"
  location = "us-west1"
 public_access_prevention = true
}	