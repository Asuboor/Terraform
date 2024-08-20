resource "aws_s3_bucket" "mybucket" {
  bucket = "static-site-project"

  tags = {
    Name = "My static site"
  }
}

resource "aws_s3_bucket_ownership_controls" "bucketcontrol" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "bucketaccess" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "bucketacl" {
  depends_on = [
    aws_s3_bucket_ownership_controls.bucketcontrol,
    aws_s3_bucket_public_access_block.bucketaccess,
  ]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}

resource "aws_s3_object" "indexobject" {
  bucket       = aws_s3_bucket.mybucket.id
  key          = "index.html"
  source       = "index.html"
  acl          = "public-read"
  content_type = "text/html"
}
resource "aws_s3_object" "errorobject" {
  bucket       = aws_s3_bucket.mybucket.id
  key          = "error.html"
  source       = "error.html"
  acl          = "public-read"
  content_type = "text/html"
}


resource "aws_s3_bucket_website_configuration" "siteconfig" {
  bucket = aws_s3_bucket.mybucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
  depends_on = [aws_s3_bucket_acl.bucketacl]
}