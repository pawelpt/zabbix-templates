
# Zabbix Templates

## usually v5.0 compatible

various flavour zabbix templates
Most of them may require SNMP configured
plus the snmp libs addicted to the system you wish to monitor

# Ping Host From Agent

## Description
Usually help improve the quality of network.
Ddiagnose network bottlenecks

## Requirements

set up execute chmod set suit for zabbix-agent usage
and add to the agent config side
```
UserParameter=chk.fping[*],(/usr/sbin/fping -e $1 2>&1|cut -d'(' -f2|cut -d ' ' -f1| xargs printf "%.2f")
```
