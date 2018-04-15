cmd_project-rm_help() {
    cat <<_EOF
    project-rm <Project> 
         Remove a project.
_EOF
}

cmd_project-rm() {
    # Delete new project 
    local project=$1
    [[ -n $project ]] || fail "Usage:\n $(cmd_project-rm_help)"

    if [[ -d $project ]]; then 
         rm -rf $project
    else
        echo "There is no project lke this" 
    fi 
    
     
    
}
