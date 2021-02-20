resource "aws_s3_bucket" "enver" {
  bucket = "myterraformnov2020"
  acl    = "private"
  versioning {
    enabled = true
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}