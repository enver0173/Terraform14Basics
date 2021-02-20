resource "aws_iam_group" "developers2" {
  name = "developers2"
}


resource "aws_iam_group" "management" {
  name = "management"
}



#resource "aws_iam_user" "the-accounts" {
#  for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
#  name     = each.key
#}


#resource "aws_iam_group" "the-accounts-groups" {
#  for_each = toset( ["sales", "marketing", "Devops"] )
#  name     = each.key
#}


resource "aws_iam_group_membership" "developers_team" {
  name = "developers-group-membership"
  users = [
    aws_iam_user.tim.name,
    aws_iam_user.bob.name,
    aws_iam_user.ben.name
  ]
  group = aws_iam_group.developers2.name
}

resource "aws_iam_group_membership" "management_team" {
  name = "management-group-membership"
  users = [
    aws_iam_user.ben.name
  ]
  group = aws_iam_group.management.name
}



#resource "aws_iam_group_membership" "developers_team2" {
#  name = "developers-group-membership"
#  users = [
#    aws_iam_user.the-accounts.name
#  ]
#  group = aws_iam_group.developers2.name
#}