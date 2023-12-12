provider "google" {
   region="us-west1"
   project="melodic-bolt-407807" 
  
}
variable "stname" {
  type = list
  default = ["us-west1","us-west2","us-west3"]
}

resource "google_storage_bucket" "dep1" {
  name = "hello"
  location = var.stname[1]
  
}