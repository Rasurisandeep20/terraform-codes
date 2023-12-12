provider "google" {
   region="us-west1"
   project="melodic-bolt-407807" 
  
}
variable "stname" {
  type = map
  default = {
  US1="us-east1"
  US2="us-west1"
  }
}

resource "google_storage_bucket" "dep1" {
  name = "hello"
  location = var.stname["US1"]
  
}