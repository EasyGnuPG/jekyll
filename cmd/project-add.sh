cmd_project-add_help() {
    cat <<_EOF
    project-add <project>
         Add New projec;;;t
_EOF
}

cmd_project-add() {
    # create new project
    local project=$1
    [[ -n $project ]] || fail "Usage:\n $(cmd_project-add_help)"

    DOMAIN=$project.jekyll.example.org
    ds inject jekyll-apache-fix.sh $DOMAIN $project
    
}


