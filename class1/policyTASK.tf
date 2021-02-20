resource "aws_iam_group_policy" "MyPowerPolicy" {
  name  = "MyPowerPolicy"
  group = aws_iam_group.Infosec.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "NotAction": [
                "iam:*",
                "organizations:*",
                "account:*"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "iam:CreateServiceLinkedRole",
                "iam:DeleteServiceLinkedRole",
                "iam:ListRoles",
                "organizations:DescribeOrganization",
                "account:ListRegions"
            ],
            "Resource": "*"
        }
    ]
})
}

resource "aws_iam_group" "Infosec" {
  name = "Infosec"
}

resource "aws_iam_group_membership" "infosec_team" {
  name = "infosec-group-membership"
  users = [
    aws_iam_user.Ron.name,
    aws_iam_user.Sam.name,
    aws_iam_user.Billy.name
  ]
  group = aws_iam_group.Infosec.name
}