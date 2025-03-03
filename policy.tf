resource "xray_security_policy" "all-critical" {
  name        = "all_critical_vulnerabilities"
  type        = "security"
  description = "Policy  for blocking critical vulnerabilities and CVSS 9+ threats"  # Explicitly set description
  project_key = "testproj"


  rule {
    name     = "all_critical_vulnerabilities"
    priority = 1

    criteria {
      min_severity = "Critical"
    }

    actions { 
      fail_build = true
      block_download {
        unscanned = false
        active    = true
      }
    }
  }

  rule {
    name     = "cvss9+"
    priority = 2

    criteria {
      cvss_range {
        from = 9.0
        to   = 10.0
      }
    }
    
    actions {
      block_download {
        unscanned = false
        active    = false
      }
    }
  }
}