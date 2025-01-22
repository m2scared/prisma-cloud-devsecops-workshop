provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "8e44d759-a36a-4c4c-b321-13e821612aee"
    git_commit           = "5a0874dafd7607d629447704d86b0a2321cc39d7"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-22 23:22:57"
    git_last_modified_by = "93332316+m2scared@users.noreply.github.com"
    git_modifiers        = "93332316+m2scared"
    git_org              = "m2scared"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
