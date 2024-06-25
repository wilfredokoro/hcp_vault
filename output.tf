output "access_key" {
  value     = data.vault_generic_secret.aws.data["Access_key"]
  sensitive = true
}

output "secret_key" {
  value     = data.vault_generic_secret.aws.data["Secret_key"]
  sensitive = true
}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}