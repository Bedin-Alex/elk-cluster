**INFO**

This is an example of ELK cluster, with load balancing between nodes.

In this deployment we will create massive output from "spam-clients", after which we will receive via Logstash cluster and send to ElasticSearch.

**What do you need?**

Replace all placeholders...

I've already commented all necessery moments. Just replace and run Docker Compose on each directory.

You're welcome

**Possible problems**

If you see message about permissions (something like Permission denied, bla-bla-bla), you must change owner to current user:

`sudo chown ${USER}:${USER} ./elk/*`



Error like:

`bootstrap check failure [1] of [1]: max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]`

To fix it you must run command below on docker host:

`sudo sysctl -w vm.max_map_count=262144`


Bugs:

In case, when you've already created cluster of Elasticsearch, and if Master node had types: `master` and `data`, and then you decide to make another one node (ex. another data-node), you will catch Error with unavaiblity to set up connection between master node and data node.

This problems caused by records in database of old ES (master/data node). Because master node also been and data. Beware of making master node as data node. 

All what you need in this case - make this folder empty (ex. `rm -rf ./data-storage-master-node/*`)

