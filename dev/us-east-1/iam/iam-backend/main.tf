resource "aws_iam_policy" "main" {
  name        = "ms-backend"
  path        = "/"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1706914954259",
      "Action": [
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:ConditionCheckItem",
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:GetRecords",
        "dynamodb:ListTables",
        "dynamodb:PutItem",
        "dynamodb:Query",
        "dynamodb:Scan",
        "dynamodb:UpdateItem",
        "dynamodb:UpdateTable"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:us-east-1:891377091031:table/proximity-clients"
    },
    {
      "Sid": "Stmt1706915153441",
      "Action": [
        "s3:AbortMultipartUpload",
        "s3:DeleteObject",
        "s3:GetBucketCORS",
        "s3:GetObject",
        "s3:GetObjectAttributes",
        "s3:GetObjectLegalHold",
        "s3:GetObjectRetention",
        "s3:GetObjectTagging",
        "s3:GetObjectVersion",
        "s3:GetObjectVersionAttributes",
        "s3:GetObjectVersionTagging",
        "s3:ListAllMyBuckets",
        "s3:ListBucket",
        "s3:ListBucketMultipartUploads",
        "s3:ListBucketVersions",
        "s3:PutBucketCORS",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::proximity-resources"
    }
  ]
})
}

