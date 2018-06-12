#!/bin/bash -x

DOMAIN=$1
project=$2 

if [[ -d $project ]]; then
        echo "The Project '$project' already exists."
        echo "Delete it first with: ds project-rm $project"
        exit 1
fi

jekyll new $project

echo $DOMAIN

#add multi domain site
<<IGNORE

cat <<EOF > /etc/apache2/sites-enabled/$project.jekyll.conf
<VirtualHost *:80>
        ServerName $DOMAIN
        RedirectPermanent / https://$project.jekyll.example.org/
</VirtualHost>

<VirtualHost _default_:443>
        ServerName $DOMAIN

        DocumentRoot /var/www/$project
        <Directory /var/www/$project/>
            AllowOverride All
        </Directory>

        SSLEngine on
        SSLCertificateFile	/etc/ssl/certs/ssl-cert-snakeoil.pem
        SSLCertificateKeyFile /etc/ssl/private/ssl-cert-snakeoil.key

        <FilesMatch "\.(cgi|shtml|phtml|php)$">
                        SSLOptions +StdEnvVars
        </FilesMatch>
</VirtualHost>

EOF

cat <<EOF > /etc/apache2/sites-available/$project.jekyll.conf
<VirtualHost *:80>
        ServerName $DOMAIN
        RedirectPermanent / https://$project.jekyll.example.org/
</VirtualHost>

<VirtualHost _default_:443>
        ServerName $DOMAIN

        DocumentRoot /var/www/$project
        <Directory /var/www/$project/>
            AllowOverride All
        </Directory>

        SSLEngine on
        SSLCertificateFile	/etc/ssl/certs/ssl-cert-snakeoil.pem
        SSLCertificateKeyFile /etc/ssl/private/ssl-cert-snakeoil.key

        <FilesMatch "\.(cgi|shtml|phtml|php)$">
                        SSLOptions +StdEnvVars
        </FilesMatch>
</VirtualHost>
EOF

IGNORE

cat <<EOF >> /var/jekyll/$project/_config.yml
destination: /var/www/$project/
EOF


