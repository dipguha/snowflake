-- sysadmin, securityadmin or sysadmin role can create warehouse
use role sysadmin;

create or replace warehouse compute_warehouse
with
warehouse_size=XSMALL
max_cluster_count = 3
auto_suspend = 300
auto_resume = true
initially_suspended = true
comment = 'This is another warehouse. Suspend in seconds';

drop warehouse compute_warehouse;
