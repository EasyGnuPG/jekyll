#!/bin/bash -x
project=$1
if [[ -d $project ]]; then
	cd $project/
	jekyll serve
else
	echo "There is no project like this"
fi
