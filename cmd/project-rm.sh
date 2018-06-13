cmd_project-rm_help() {
    cat <<_EOF
    project-rm <Project> <option>
         Remove a project.
    Option :
	-o :  only delete project (Default)
	-r : to remove all webdata with project     
_EOF
}

cmd_project-rm() {
    # Delete new project
	
	local project=$1
    	local option=$2   
    	
    	[[ -n $project ]] || fail "Usage:\n $(cmd_project-rm_help)"
	[[ -n $option ]]  || option='-o'
	if [[ $option == '-o' ]];then 	
		ds inject jekyll-rm.sh  $project    	
	
	elif [[ $option == '-r' ]]; then
		ds inject jekyll-rm-all.sh  $project  
        	ds inject jekyll-apache2-config-del.sh $project
    
    	else		
		echo "Use right option"
    	fi	
	
}
