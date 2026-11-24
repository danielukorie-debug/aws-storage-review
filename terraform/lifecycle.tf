resource "aws_s3_bucket_lifecycle_configuration" "storage" {
  bucket = aws_s3_bucket.storage.id

  depends_on = [
    aws_s3_bucket_versioning.storage
  ]

  rule {
    id     = "archive-eligible-objects"
    status = "Enabled"

    filter {}

    transition {
      days          = var.archive_after_days
      storage_class = "GLACIER"
    }
  }
}
