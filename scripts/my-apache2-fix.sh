#!/bin/bash -x

source /host/settings.sh
DOMAIN=${DOMAIN:-$IMAGE.example.org}

mkdir -p /var/log/apache2




### enable ssl etc.
a2enmod ssl

service apache2 restart

### create a script to check for apache2, and start it if not running
cat <<'EOF' > /usr/local/sbin/apachemonitor.sh
#!/bin/bash
# restart apache if it is down

if ! /usr/bin/pgrep apache2
then
    date >> /usr/local/apachemonitor.log
    rm /var/run/apache2/apache2.pid
    /etc/init.d/apache2 restart
fi
EOF
chmod +x /usr/local/sbin/apachemonitor.sh

### setup a cron job to monitor apache2
mkdir -p /etc/cron.d/
cat <<'EOF' > /etc/cron.d/apachemonitor
* * * * * root /usr/local/sbin/apachemonitor.sh >/dev/null 2>&1
EOF
chmod +x /etc/cron.d/apachemonitor


a2enmod vhost_alias

echo "LoadModule vhost_alias_module modules/mod_vhost_alias.so" >> /etc/apache2/apache2.conf

service apache2 restart
