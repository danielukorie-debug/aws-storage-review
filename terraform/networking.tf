resource "aws_security_group" "efs" {
  name_prefix = "storage-review-efs-"
  description = "Restrict EFS NFS access to the selected subnet"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "NFS from selected subnet"
    from_port   = 2049
    to_port     = 2049
    protocol    = "tcp"
    cidr_blocks = [data.aws_subnet.selected.cidr_block]
  }

  egress = []

  tags = {
    Name = "storage-review-efs-sg"
  }
}

resource "aws_efs_mount_target" "storage" {
  file_system_id  = aws_efs_file_system.storage.id
  subnet_id       = data.aws_subnet.selected.id
  security_groups = [aws_security_group.efs.id]
}
