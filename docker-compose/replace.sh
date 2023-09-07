#!#!/bin/bash
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo "Enter ${CYAN}ElasticSearch #1${NC} server"
read es_1 # [es-1] (data/master/kibana/logstash(conf/yml))
find ./ -type f -exec sed -i 's/[es-1]/$es_1/g' {} +

echo "Enter ${CYAN}ElasticSearch #2${NC} server"
read es_2 # [es-2] (data/master/kibana/logstash(conf/yml))
find ./ -type f -exec sed -i 's/[es-2]/$es_2/g' {} +

echo "Enter ${CYAN}Logstash #1${NC} server"
read l_stash_1 # [logstash1_address] (nginx.conf)
find ./ -type f -exec sed -i 's/[logstash1_address]/$l_stash_1/g' {} +

echo "Enter ${CYAN}Logstash #2${NC} server"
read l_stash_2 # [logstash2_address] (nginx.conf)
find ./ -type f -exec sed -i 's/[logstash2_address]/$l_stash_2/g' {} +

echo "Enter ${CYAN}Logstash #3${NC} server"
read l_stash_3 # [logstash3_address] (nginx.conf)
find ./ -type f -exec sed -i 's/[logstash3_address]/$l_stash_3/g' {} +

echo "Enter ${CYAN}NginX UDP${NC} server"
read nginx_udp # spam/compose
sed -i 's/[nginx-address]/$nginx_udp/' ./spam/docker-compose.yaml