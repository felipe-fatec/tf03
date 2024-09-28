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
	token = var.token 
}

resource "github_repository" "example" {
  name = "example_terraform_1"
}

resource "github_branch" "development" {
  repository = github_repository.example.name
  branch     = "development"
}

