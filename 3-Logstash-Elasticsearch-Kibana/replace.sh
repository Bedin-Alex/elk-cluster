#!/bin/bash
CYAN="\033[0;36m"
NC="\033[0m" # No Color

echo -e "Enter ${CYAN}ElasticSearch${NC} IP-address"
read es # [Elastic-address]
find ./ -type f -exec sed -i "s/\[Elastic-address\]/$es/g" {} +

echo -e "Enter ${CYAN}Logstash${NC} IP-address"
read l_stash # [Logstash-address]
find ./ -type f -exec sed -i "s/\[Logstash-address\]/$l_stash/g" {} +

echo -e "Enter ${CYAN}Loki${NC} IP-address"
read loki # [Loki-address]
find ./ -type f -exec sed -i "s/\[Loki-address\]/$loki/g" {} +

mkdir ./logstash-elastic-grafana/data-elastic
chmod 777 ./logstash-elastic-grafana/data-elastic