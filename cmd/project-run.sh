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
     
    if [[ -d $project ]]; then 
         cd $project/
         sudo jekyll serve 
    else
        echo "There is no project like this" 
    fi
}
