// output

output "sub_id" {
  value = "${aws_subnet.subnet.id}"  
}


# output "vpc_id" {
#   value = "${aws_vpc.main.id}"
# }