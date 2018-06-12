cmd_project-rm_help() {
    cat <<_EOF
    project-rm <Project>
         Remove a project.
    Option :
	-r : to remove all webdata with project    
_EOF
}

cmd_project-rm() {
    # Delete new project

    local option=$2   
    local project=$1
    [[ -n $project ]] || fail "Usage:\n $(cmd_project-rm_help)"
    if [[ $option == '-r' ]]; then
	ds inject jekyll-rm.sh  $project  
        ds inject jekyll-apache2-config-del.sh $project
    elif [[ -n $option ]];then	
	ds inject jekyll-rm.sh  $project 
    else
	echo "Use right option"
    fi	
	
}
