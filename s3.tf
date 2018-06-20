resource "aws_s3_bucket" "b" {
    bucket = "mybucket-462281"
    acl = "private"

    tags {
        Name = "mybucket-462281"
    }
}
