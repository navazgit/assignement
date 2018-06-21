resource "aws_s3_bucket" "b" {
    bucket = "mybucket-462281"
    acl = "public-read"

    tags {
        Name = "mybucket-462281"
    }
	role = "s3-mybucket-role-462281"
	website {
    index_document = "index.html"
    error_document = "error.html"
	
	}
}
