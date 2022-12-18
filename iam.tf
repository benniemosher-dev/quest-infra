resource "aws_iam_access_key" "tfcloud" {
  user    = aws_iam_user.tfcloud.name
  pgp_key = "keybase:bm_dev_service"
}

resource "aws_iam_user" "tfcloud" {
  name = "tfcloud"
  path = "/"
}

resource "aws_iam_user_policy" "tfcloud" {
  name = "tfcloud"
  user = aws_iam_user.tfcloud.name

  policy = data.aws_iam_policy_document.tfcloud.json
}

data "aws_iam_policy_document" "tfcloud" {
  statement {
    actions = [
      "s3:Describe*"
    ]

    resources = [
      "*"
    ]
  }
}
