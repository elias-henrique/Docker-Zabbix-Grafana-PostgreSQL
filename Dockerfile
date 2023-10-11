FROM zabbix/zabbix-agent:6.2-ubuntu-latest

# # Crie um usuário não privilegiado
# RUN groupadd -r zabbix && useradd -r -g zabbix zabbix

# Atualize a lista de pacotes e instale o jq como root
USER root

# Atualize a lista de pacotes e instale o jq
RUN apt-get update && \
    apt-get install -y jq

# USER zabbix