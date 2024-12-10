/* output "availability_zones" {
  value = data.aws_availability_zones.available.names
}
 */
output "vpc_id" {
    value = data.aws_vpc.selected.id
}

output "public_subnet_ids" {
    value = data.aws_subnets.public.ids
}

output "private_subnet_ids" {
    value = data.aws_subnets.private.ids
}

output "instance_az" {
  value = aws_instance.server.availability_zone
}