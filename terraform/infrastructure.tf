provider aws {
  region = "ap-southeast-2"
  profile = "dev"
  version = "~> 1.5"
}

resource "aws_s3_bucket" "b" {
  bucket_prefix = "consul-tf-demo"
  acl    = "private"

  tags {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
