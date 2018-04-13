cmd_project-config_help() {
    cat <<_EOF
    project-config <project> <post_file_hard_link> 
         Add config file to given project.
_EOF
}

cmd_project-config() {
    # copy config_file in post dirictory 
    local project=$1
    local config=$2
    [[ -n $project ]] || fail "Usage:\n $(cmd_project-config_help)"
    [[ -n $config ]] || fail "Usage:\n $(cmd_project-config_help)"
    
    
    yes | cp -rf $config $project/
    
}
