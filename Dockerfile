FROM zabbix/zabbix-server-pgsql:ubuntu-6.2-latest

# # Crie um usuário não privilegiado
# RUN groupadd -r zabbix && useradd -r -g zabbix zabbix

# Atualize a lista de pacotes e instale o jq como root
USER root

# Atualize a lista de pacotes e instale o jq
RUN apt-get update -y && \
    apt-get install -y jq && \
    apt-get install -y python3-pip && \
    pip3 install py-zabbix && \
    pip3 install paramiko
