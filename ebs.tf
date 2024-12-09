resource "aws_ebs_volume" "yap-ebs-volume" {
  availability_zone = "ap-southeast-1a"
  size              = 1

  tags = {
    Name = "yap-ebs-volume"
  }
}

resource "aws_volume_attachment" "ebs_attach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.yap-ebs-volume.id
  instance_id = aws_instance.server.id
}