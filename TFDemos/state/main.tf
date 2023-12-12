provider "google" {
   region="us-west1"
   project="melodic-bolt-407807" 
  
}

resource "google_storage_bucket" "dep2" {
  name = "testb1tr123"
  location = "us-west1"
  uniform_bucket_level_access = false
  force_destroy = true
}	