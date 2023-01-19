// s3 bucket

resource "aws_s3_bucket" "demo" {
    bucket = "tf-bucket-1710"
    tags = {
        Name = "tf-bucket-demo"
        Environment ="dev"
    }
  }
