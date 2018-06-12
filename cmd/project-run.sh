cmd_project-run_help() {
    cat <<_EOF
    project-start <project> 
         Start the available project.
_EOF
}

cmd_project-run() {
    # start project
    local project=$1
    [[ -n $project ]] || fail "Usage:\n $(cmd_project-run_help)"
    
    ds inject jekyll-run.sh $project
}
