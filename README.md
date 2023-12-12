terraform workspace


12th Dec:
-----------

TF Function Labs:
---------------------------
https://racetrng12345b1.s3.amazonaws.com/tf_functions.zip


------------------------------------------------






variable "var1" {
  type = list
  default = ["myvpcnet1","myvpcnet2","vpc3"]
  
}


output "out_var1" {
  value = [for i in var.var1 : upper(i)]
}


output "out_var2" {
  value = [for i in var.var1 : upper(i) if length(i) > 6]
}

-----------------------------------
provider "google" {
    region = "us-west1"
    project = "dnblab1"
  
}

variable "create_vpc" {
  type = bool
}

resource "google_compute_network" "dep1" {
    count = var.create_vpc ? 1:0
    name = "vpc1"
    routing_mode = "GLOBAL"
    auto_create_subnetworks = false
  
}

resource "google_compute_network" "dep2" {
    count = var.create_vpc ? 0:1
    name = "vpc2"
    routing_mode = "GLOBAL"
    auto_create_subnetworks = false
  
}




---------------------------------------
variable "vpclist" {
    type = list
    
  
}

resource "google_compute_network" "dep1" {
    # count = 3
    # name = "devvpc-${count.index}"
    count = length(var.vpclist)
    name = var.vpclist[count.index]
    routing_mode = "GLOBAL"
    auto_create_subnetworks = false
  
}
---------------------------------




https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/8.1.0/windows_10_cmake_Release_graphviz-install-8.1.0-win64.exe

terraform graph | dot -Tsvg > graph1.svg




---------------
provider "google" {
    region = "us-west1"
    project = "dnblab1"
  
}

data "google_compute_network" "dep1" {
  name = "vpc1"
}

data "google_project" "dep2" {
  project_id = "dnblab1"
}

output "out_var1" {
  value = data.google_compute_network.dep1.id
}

output "out_var2" {
  value = data.google_project.dep2.number
}




-----------------------
69 terraform plan --help
  70 terraform plan -var "stname=demob1tr12345"
  71 terraform plan -var-file="var1.tfvars"




--------------------------------------
provider "google" {
    region = "us-west1"
    project = "dnblab1"
  
}
variable "stname" {
  type = string
}

resource "google_storage_bucket" "dep1" {
  name = var.stname
  location = "us-west1"

}
--------------------------------



42 cd .\workspace\
  43 terraform init
  44 terraform workspace list
  45 terraform workspace new dev
  46 terraform workspace list
  47 terraform workspace new prod
  48 terraform workspace list
  49 terraform workspace select dev
  50 terraform workspace list
  51 terraform apply
  52 terraform show
  53 terraform workspace select prod
  54 terraform show
  55 terraform apply
  56 terraform show
  57 terraform workspace select dev
  58 terraform show
  59 terraform destroy
  60 terraform workspace select prod
  61 terraform destroy






terraform import google_storage_bucket.dep2 testb2tr12345

terraform apply -refresh-only


34  sudo apt-get install -y tree unzip
   35  cd ~
   36  ls -al
   37  cd .config/
   38  ls
   39  cd gcloud/
   40  ls
   41  mv ~/tfdemos/setup/key1.json  application_default_credentials.json




11th Dec:
----------------
https://code.visualstudio.com/download#

Powershell:
----------------
 1 Set-ExecutionPolicy Unrestricted
  2 [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

JDK:
------------------
https://aka.ms/download-jdk/microsoft-jdk-11.0.21-windows-x64.msi

CloudShell:
-------------------
https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe

Terraform:
------------
https://releases.hashicorp.com/terraform/1.6.5/terraform_1.6.5_windows_386.zip


Linux:
-----------
sudo apt-get update
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

sudo apt-get update

sudo apt-get install google-cloud-sdk
gcloud --version

Terraform on Linux:
--------------------------
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
terraform --version


Terraform providers:
---------------------------
https://registry.terraform.io/browse/providers

Env Name:
-------------------
GOOGLE_APPLICATION_CREDENTIALS		


Storage bucket:
-----------------------
resource "google_storage_bucket" "dep1" {
  name = "testb1tr123"
  location = "us-west1"
  uniform_bucket_level_access = false
  force_destroy = true
}					
