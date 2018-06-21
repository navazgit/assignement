resource "aws_s3_bucket" "b" {
    bucket = "mybucket-462281"
    acl = "public-read"

    tags {
        Name = "mybucket-462281"
    }
	policy {
	{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow", 
            "Principal": "*", 
            "Action": "s3:GetObject", 
            "Resource": "arn:aws:s3:::[YOUR_BUCKET_NAME]/*" 
        } 
    ] 
	}
	
	}
	website {
    index_document = "index.html"
    error_document = "error.html"
	EOF
	}
}
