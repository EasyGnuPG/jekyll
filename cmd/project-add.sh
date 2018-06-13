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

    DOMAIN=$project.example.org
    ds inject jekyll-add.sh $DOMAIN $project
}


