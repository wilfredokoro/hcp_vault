

provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

provider "aws" {
  region     = var.region
  access_key = data.vault_generic_secret.aws.data["Access_key"]
  secret_key = data.vault_generic_secret.aws.data["Secret_key"]
}

