org_name = "default"
prefix   = "tf_demo_ntp_tfvars_3"

ntp_description     = "NTP Policy from ntp.tfvars file"
ntp_policy_enabled  = true
ntp_server_1        = "1.1.1.5"
ntp_server_2        = "1.1.1.6"
ntp_policy_timezone = "America/Los_Angeles"

tags = {
  key1   = "DC"
  value1 = "San Jose"
  key2   = "ENV"
  value2 = "LAB"
}
