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

    #local option=$2   #trying to add multi domain site
    local project=$1
    [[ -n $project ]] || fail "Usage:\n $(cmd_project-rm_help)"
    
    #ds inject jekyll-rm.sh $project $option    #trying to add multi domain site

    ds inject jekyll-rm.sh $project 
}
