project                 = "devops-practice-411411"
subnet1_name            = "terraform-private-subnet"
subnet1_ip_cidr_range   = "10.0.1.0/24"
log_interval            = "INTERVAL_10_MIN"
log_flow_sampling       = 0.5
metadata                = "INCLUDE_ALL_METADATA"
create_timeouts         = "20m"
delete_timeouts         = "15m"
update_timeouts         = "10m"
subnet2_name            = "terraform-private2-subnet"
subnet2_ip_cidre_range = "192.168.0.0/24"
zone                    = "us-central1-a"
name-terraform-network  = "terraform-network"
region_name             = "us-central1"