#!/bin/bash

mkdir -p $INFLUX_HOME/logs
CONF_FILE=$INFLUX_HOME/etc/influxdb/influxdb.conf
echo "[meta]" >$CONF_FILE
echo '  dir = "/opt/influxdb/meta"' >>$CONF_FILE
echo "[data]" >>$CONF_FILE
echo '  dir = "/opt/influxdb/data"' >>$CONF_FILE
echo '  wal-dir = "/opt/influxdb/wal"' >>$CONF_FILE
echo '  series-id-set-cache-size = 100' >>$CONF_FILE
echo "[http]" >>$CONF_FILE
echo '  flux-enabled = true' >>$CONF_FILE
nohup influxd run -config $INFLUX_HOME/etc/influxdb/influxdb.conf >>$INFLUX_HOME/logs/influxdb1.stdout.log 2>>$INFLUX_HOME/logs/influxdb1.stderr.log &
