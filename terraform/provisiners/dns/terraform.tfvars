project        = "andheri-duniya"
zone_name      = "terra-zone"
dns_name       = "private.example.com."
description    = "Example private DNS zone"
labels         = { env = "dev" }
visibility     = "private"
network_url    = "projects/andheri-duniya/global/networks/default"
record_name    = "terra-record.private.example.com."
record_type    = "A"
ttl            = 300
rrdatas        = "10.128.0.3"
