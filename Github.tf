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
  token = "***********************************"
}
resource "github_repository" "example" {
  name        = "First_Repo.tf"
  visibility = "public"
}


Note: To authenticate Github we have to provide token so, it is very sensitive information.
