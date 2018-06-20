resource "aws_iam_role" "s3-mybucket-role-462281" {
    name = "s3-mybucket-role-462281"
    assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_instance_profile" "s3-mybucket-role-instanceprofile" {
    name = "s3-mybucket-role-462281"
    role = "${aws_iam_role.s3-mybucket-role-462281.name}"
}

resource "aws_iam_role_policy" "s3-mybucket-role-policy-462281" {
    name = "s3-mybucket-role-policy-462281"
    role = "${aws_iam_role.s3-mybucket-role-462281.id}"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
              "s3:*"
            ],
            "Resource": [
              "arn:aws:s3:::mybucket-462281",
              "arn:aws:s3:::mybucket-462281/*"
            ]
        }
    ]
}
EOF
}

