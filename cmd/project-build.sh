cmd_project-build_help() {
    cat <<_EOF
    project-build <project> 
         Build the available project.
_EOF
}

cmd_project-build() {
    # start project
    local project=$1
    [[ -n $project ]] || fail "Usage:\n $(cmd_project-build_help)"
    
    ds inject jekyll-build.sh $project
}
