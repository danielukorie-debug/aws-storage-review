variable "aws_region" {
  description = "AWS deployment region."
  type        = string
  default     = "us-east-1"
}

variable "ebs_size" {
  description = "EBS volume size in GiB."
  type        = number
  default     = 8

  validation {
    condition = (
      var.ebs_size >= 1 &&
      var.ebs_size <= 20 &&
      floor(var.ebs_size) == var.ebs_size
    )
    error_message = "Use a whole number between 1 and 20 GiB."
  }
}

variable "archive_after_days" {
  description = "Days before eligible S3 objects transition to Glacier."
  type        = number
  default     = 90

  validation {
    condition = (
      var.archive_after_days >= 30 &&
      floor(var.archive_after_days) == var.archive_after_days
    )
    error_message = "Use a whole number of at least 30 days."
  }
}
