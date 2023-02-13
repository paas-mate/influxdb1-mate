FROM ttbb/influxdb1:nake

COPY docker-build /opt/influxdb/mate

WORKDIR /opt/influxdb

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/influxdb/mate/scripts/start.sh"]
