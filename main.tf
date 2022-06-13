terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
    }
  }
}

provider "intersight" {
  apikey    = var.apikey
  secretkey = var.secretkey
  endpoint  = "https://intersight.com"
}

data "intersight_organization_organization" "org_data" {
  name = var.org_name
}

resource "intersight_ntp_policy" "ntp_policy" {
  namex        = var.prefix
  description = var.ntp_description
  enabled     = var.ntp_policy_enabled
  ntp_servers = [
    var.ntp_server_1,
    var.ntp_server_2
  ]
  timezone = var.ntp_policy_timezone
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org_data.results[0].moid
  }
  tags {
    key   = var.tags.key1
    value = var.tags.value1
  }
  tags {
    key   = var.tags.key2
    value = var.tags.value2
  }
}
