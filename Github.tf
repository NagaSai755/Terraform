terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = "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"
}
resource "github_repository" "example" {
  name        = "First_Repo.tf"
  visibility = "public"
}
