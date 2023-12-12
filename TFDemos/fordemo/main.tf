variable "var1" {
    type=list
    default = ["myvpcnet1","myvpcnet2","myvpc"]
}

output "out_var1" {
  value = [for i in var.var1: upper(i)]
}

output "out_var2" {
  value = [for i in var.var1: upper(i) if length(i)>6]
}