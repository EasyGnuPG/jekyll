cmd_project-add_help() {
    cat <<_EOF
    project-add <project>
         Add New project
_EOF
}

cmd_project-add() {
    # create new project 
    local project=$1
    [[ -n $project ]] || fail "Usage:\n $(cmd_project-add_help)"

    if [[ -d $project ]]; then
        echo "The Project '$project' already exists."
        echo "Delete it first with: ds project-rm $project"
        exit 1
    fi 
    jekyll new $project
    DOMAIN=$project.jekyll.example.org
    ds apache-fix.sh
     
    
}
