output "aws_region" {
  description = "Selected AWS region."
  value       = var.aws_region
}

output "s3_bucket_name" {
  description = "Name of the planned S3 bucket."
  value       = aws_s3_bucket.storage.id
}

output "ebs_volume_id" {
  description = "ID of the planned EBS volume."
  value       = aws_ebs_volume.storage.id
}

output "ebs_availability_zone" {
  description = "Availability Zone for EBS."
  value       = data.aws_subnet.selected.availability_zone
}

output "efs_file_system_id" {
  description = "ID of the planned EFS file system."
  value       = aws_efs_file_system.storage.id
}

output "efs_mount_target_id" {
  description = "ID of the planned EFS mount target."
  value       = aws_efs_mount_target.storage.id
}

output "efs_dns_name" {
  description = "DNS name of the planned EFS file system."
  value       = aws_efs_file_system.storage.dns_name
}
