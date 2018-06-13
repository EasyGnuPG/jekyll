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





cat <<EOF >> /var/jekyll/$project/_config.yml
destination: /var/www/$project/
EOF
mkdir -p /var/www/$project


