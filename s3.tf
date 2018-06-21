resource "aws_s3_bucket" "b" {
    bucket = "mybucket-462281"
    acl = "public-read"

    tags {
        Name = "mybucket-462281"
    }
	
}
