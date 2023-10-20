**CASE 2**

Logstash, Elasticsearch, Grafana

```
 __________      __________      _______________      _________  
|          |    |          |    |               |    |         |
| Ext Data | -> | Logstash | -> | Elasticsearch | -> | Grafana |
|__________|    |__________|    |_______________|    |_________| 
```

./fake-traffic - is for emulation of external traffic (each 2 seconds will be sent a new message in logstash)

./logstash-elastic-grafana - is for filter, storage of logs, and show it in Grafana


Just run this 2 dirs one after another and you will see the power of magic 😊

P.S. Before you will run docker compose, replace all placeholders (you can do it with `./replace.sh`)
