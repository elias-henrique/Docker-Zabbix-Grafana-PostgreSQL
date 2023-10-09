# Docker Zabbix Grafana PostgreSQL NGINX 

## Components docker-compose:

- Postgresql 14.5
- Zabbix Server 6.2
- Zabbix Frontend NGINX 6.2
- Zabbix Agent 6.2
- Grafana 9.5.9

### Easy guide

1) Clone repo:
```
git clone https://github.com/akmalovaa/zabbix-docker.git monitoring-docker
cd monitoring-docker
```

2) Change owner grafana directory:

```
chown -R 1000:1000 grafana zabbix-server zabbix-agent
chmod -R 777 grafana zabbix-server zabbix-agent
```

3) Run docker-compose:
```
docker-compose up -d
```

### Debug
```
docker-compose logs --tail=1 -f
```
