cmd_project-config-add_help() {
    cat <<_EOF
    project-add <project>
         ADD project apache config.
_EOF
}

cmd_project-config-add() {
    # create new project
    local project=$1
    [[ -n $project ]] || fail "Usage:\n $(cmd_project-config-add_help)"

    DOMAIN=$project.example.org
    
    ds inject jekyll-apache2-config-add.sh $DOMAIN $project
}


