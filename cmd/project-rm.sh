cmd_project-rm_help() {
    cat <<_EOF
    project-rm <Project> <option>
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

    ds inject jekyll-rm.sh  $project $option 
}
