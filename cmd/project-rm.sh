cmd_project-rm_help() {
    cat <<_EOF
    project-rm <Project> 
         Remove a project.
_EOF
}

cmd_project-rm() {
    # Delete new project 
    local project=$1
    local option=$2
    [[ -n $project ]] || fail "Usage:\n $(cmd_project-rm_help)"

    if [[ -d $project ]]; then 
         rm -rf $project
	if [[ $option=='-r']]
		rm -rf /var/www/jekyll/$project
	else
		echo "$(cmd_project-rm_help)" 
    else
        echo "There is no project like this" 
    fi 
    
     
    
}
