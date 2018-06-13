#!/bin/bash -x


DOMAIN=$1
project=$2

### create a configuration file

cat <<EOF > /etc/apache2/sites-available/$DOMAIN.conf
NameVirtualHost *:80

<VirtualHost *:80>
        ServerName jekyll.example.org
        RedirectPermanent / https://$DOMAIN/
	ServerAlias $DOMAIN
</VirtualHost>

<VirtualHost *:443>
        ServerName $DOMAIN

        DocumentRoot /var/www/$project/
        <Directory /var/www/$project/>
            AllowOverride None
        </Directory>
	
	ErrorLog /var/jekyll/$project/error.log
        SSLEngine on
        SSLCertificateFile	/etc/ssl/certs/ssl-cert-snakeoil.pem
        SSLCertificateKeyFile /etc/ssl/private/ssl-cert-snakeoil.key

        <FilesMatch "\.(cgi|shtml|phtml|php)$">
                        SSLOptions +StdEnvVars
        </FilesMatch>
</VirtualHost>
EOF


a2ensite $DOMAIN
service apache2 reload

service apache2 restart
