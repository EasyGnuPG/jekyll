#!/bin/bash +x

project=$1
#option=$2    #trying to add multi domain site


if [[ -d $project ]]; then
	rm -rf $project

<<ADDITIONAL #trying to add multi domain site

	if [[ $option=='-r']]
		rm -rf /var/www/jekyll/$project
		echo "Project with it's data deleted"
	elif [[ -n $option ]];then
		echo "project delected"
	else
		echo "Use right option"
	fi
	
ADDITIONAL


else
	echo "There is no project like this"
fi
