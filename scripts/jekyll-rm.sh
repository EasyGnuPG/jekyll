#!/bin/bash +x

project=$1
option=$2    #trying to add multi domain site


if [[ -d $project ]]; then
	rm -rf $project

	if [[ $option == '-r' ]]; then
		rm -rf /var/www/jekyll/$project
		echo "Project with it's data deleted"
	elif [[ -n $option ]];then
		echo "project delected"
	else
		echo "Use right option"
	fi
	
else
	echo "There is no project like this"
fi
