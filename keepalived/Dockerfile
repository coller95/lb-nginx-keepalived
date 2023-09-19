FROM alpine:3.12

# Install keepalived, supervisor, and logrotate
RUN apk add --no-cache keepalived supervisor logrotate

# Create Supervisor configuration directory and add keepalived configuration
RUN mkdir -p /etc/supervisor.d/
COPY keepalived.ini /etc/supervisor.d/

# Add logrotate configuration for supervisord logs
COPY supervisord-logrotate /etc/logrotate.d/supervisord

# Create and copy logrotate script
COPY logrotate-script.sh /usr/local/bin/logrotate-script.sh
RUN chmod +x /usr/local/bin/logrotate-script.sh

# Supervisor configuration to run logrotate script
COPY logrotate-supervisor.ini /etc/supervisor.d/logrotate.ini

# Use Supervisor as the entrypoint
CMD ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
