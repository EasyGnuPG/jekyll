cmd_project-start_help()() {
    cat <<_EOF
    project-start <project> 
         Start the available project.
_EOF
}

cmd_project-start() {
    # start project
    local project=$1
    [[ -n $project ]] || fail "Usage:\n $(cmd_clone_help)"
    if [[ -ne $project ]]; then
        echo "The Project '$project' not exists."
        echo "Add project first with: ds project-add $project"
        exit 1
    fi 
    cd $project/
    jekyll serve --host 127.0.0.1 
    
}
