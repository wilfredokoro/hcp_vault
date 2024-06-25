data "vault_generic_secret" "aws" {
  path = "secret/aws"
}

data "aws_caller_identity" "current" {}

resource "null_resource" "create_identity_json" {
  provisioner "local-exec" {
    command = <<EOT
    cat <<EOF > ${path.module}/identity.json
    {
      "arn": "${data.aws_caller_identity.current.arn}",
      "access_key_id": "$AWS_ACCESS_KEY_ID",
      "secret_access_key": "$AWS_SECRET_ACCESS_KEY",
      #"session_token": "$AWS_SESSION_TOKEN"
    }
    EOF
    EOT
  }
}