resource "aws_ebs_volume" "storage" {
  availability_zone = data.aws_subnet.selected.availability_zone

  size      = var.ebs_size
  type      = "gp3"
  encrypted = true

  tags = {
    Name = "storage-review-ebs"
  }
}
