FROM ttbb/influxdb1:nake

COPY docker-build /opt/influxdb/mate

COPY config/influxdb.conf /opt/influxdb/etc/influxdb/influxdb.conf

WORKDIR /opt/influxdb

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/influxdb/mate/scripts/start.sh"]
