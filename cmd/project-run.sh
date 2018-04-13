cmd_project-run_help() {
    cat <<_EOF
    project-start <project> 
         Start the available project.
_EOF
}

cmd_project-run() {
    # start project
    local project=$1
    [[ -n $project ]] || fail "Usage:\n $(project-run_help)"
     
    cd $project/
    jekyll serve --host 127.0.0.1 
    
}
