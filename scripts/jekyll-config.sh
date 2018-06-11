#!/bin/bash -x

project=$@

if [[ -d $project ]]; then 
	nano $project/_config.yml
else
	echo "There is no project like this" 
fi
