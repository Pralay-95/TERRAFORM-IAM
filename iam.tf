resource "aws_iam_user" "name" {
    for_each = toset(var.users)
  name = each.key
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}


provider "aws" {
    region = "us-east-1"
    profile = "terraform"
  
}

