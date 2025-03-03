resource "xray_watch" "all_critical_watch" {
  name        = "all_critical_watch"
  description = "Watch for critical vulnerabilities and CVSS 9+ issues in selected repositories."
  project_key = "testproj"


  watch_resource {
    type = "repository"
    name = "android-dev-generic-local"
    repo_type = "local"
  }


  assigned_policy {
    name = xray_security_policy.all-critical.name
    type = "security" 
  }
}