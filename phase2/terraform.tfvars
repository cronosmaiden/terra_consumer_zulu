region = "us-east-1"

waf_name        = "test-waf-new"
rate_limit      = 1000

waf_rules = [
  {
    name        = "block-specific-ips"
    priority    = 1
    ip_set_arn  = "arn:aws:wafv2:us-east-1:801995017684:regional/ipset/block-specific-ips/31b22dd8-5f12-469b-bcc5-b59894355ef4"
    metric_name = "blocked-ips-metric"
  }
]
