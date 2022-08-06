#!/bin/bash

mkdir -p $INFLUX_HOME/logs
nohup $INFLUX_HOME/mate/influxdb1-mate >>$INFLUX_HOME/logs/influxdb1_mate.stdout.log 2>>$INFLUX_HOME/logs/influxdb1_mate.stderr.log &
