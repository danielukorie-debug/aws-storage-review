resource "aws_efs_file_system" "storage" {
  creation_token   = "aws-storage-review-efs"
  encrypted        = true
  performance_mode = "generalPurpose"
  throughput_mode  = "elastic"

  tags = {
    Name = "storage-review-efs"
  }
}
