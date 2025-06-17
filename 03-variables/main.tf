# variable "var1" {
#   default = "string variable"
# }
# output "var1_print" {
#   value = var.var1
# }
#
# variable "var_list" {
#   default = [1,"string",true]
# }
# output "var_list" {
#   value = var.var_list[2]
# }

variable "var_map" {
  default = {
    frontend = {
      type = "t3.micro"
    }
  }
}
output "map_print" {
  value = var.var_map["frontend"]["type"]
}
