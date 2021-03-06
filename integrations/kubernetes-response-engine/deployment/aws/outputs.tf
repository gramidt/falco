locals {
  patch_for_aws_auth = <<CONFIGMAPAWSAUTH
    - rolearn: ${aws_iam_role.iam-for-lambda.arn}\n
     username: kubernetes-response-engine
CONFIGMAPAWSAUTH
}

output "patch_for_aws_auth" {
  value = "${local.patch_for_aws_auth}"
}

output "iam_for_lambda" {
  value = "${aws_iam_role.iam-for-lambda.arn}"
}
