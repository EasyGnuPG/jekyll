cmd_project-config_help() {
    cat <<_EOF
    project-config <project> 
         Change config file of given project.
_EOF
}

cmd_project-config() {
    # edit config_file in post dirictory 
    local project=$1

    [[ -n $project ]] || fail "Usage:\n $(cmd_project-config_help)"

    if [[ -d $project ]]; then 
         nano $project/_config.yml
    else
        echo "There is no project like this" 
    fi
}
