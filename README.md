# Docker Zabbix Grafana PostgreSQL NGINX 

## Components docker-compose:

- Postgresql 14.5
- Zabbix Server 6.2
- Zabbix Frontend NGINX 6.2
- Zabbix Agent 6.2
- Grafana 9.5.9

1) Change owner grafana directory:

```
chown -R 1000:1000 grafana zabbix-server zabbix-agent postgres
chmod -R 777 grafana zabbix-server zabbix-agent postgres
```

2) Run docker-compose:
```
docker compose up -d
```

### Debug
```
docker-compose logs --tail=1 -f
```
