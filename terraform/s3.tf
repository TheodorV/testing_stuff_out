resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state-f739fj208fgj2"
  acl    = "private"

  tags = {
    Name = "Terraform state"
  }
}

