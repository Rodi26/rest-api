variable "repo-deploy-releases" {
  type = string
}

variable "repo-deploy-snapshots" {
  type = string
}

variable "repo-resolve-releases" {
  type = string
}

variable "repo-resolve-snapshots" {
  type = string
}

variable "project" {
  type = string
}

variable "repository" {
  type = string
}

variable "github_token" {
  type = string
  description = "GitHub personal access token"
}

variable "github_owner" {
  type = string
  description = "GitHub organization or individual user account to manage"
}

variable "github_repository" {
  type = string
  description = "GitHub repository name"
} 

variable "jfrog_url" {
  type = string
  default = "http://localhost:8081"
}

variable "OIDC_PROVIDER_NAME" {
  type = string
  description = "OIDC Provider Name"
}

variable "OIDC_AUDIENCE" {
  type = string
  description = "OIDC Audience"
}

variable "OIDC_IDENTITY_MAPPING" {
  type = string
  description = "OIDC identity mapping"
}

variable "DOCKER_DEV_REPO" {
  type = string
  description = "Repo for docker"
}


