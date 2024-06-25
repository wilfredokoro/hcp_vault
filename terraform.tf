terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "4.2.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.52.0"
    }
  }

}