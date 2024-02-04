resource "aws_s3_bucket" "this" {
  bucket = "${var.env}-${var.s3_name}"
}
