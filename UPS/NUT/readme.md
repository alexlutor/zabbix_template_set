# Мониторинг NUT через Zabbix_agent

Зависимости:
jq, grep, upsc

1.\Cкопировать файл nut.sh в директорию /etc/zabbix/script/nut.sh (скрипт формирующий LLD и получение данных)
2.\Cкопировать файл nut.conf в директорию /etc/zabbix/zabbix_agent2.d/nut.conf (файл сожержащий настройки пользовательские параметры)