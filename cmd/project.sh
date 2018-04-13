cmd_config_help() {
    cat <<_EOF
    config
        Run configuration scripts inside the container.

_EOF
}

cmd_config() {
    # create new project 
    echo 'enter the project name'
    read $project
     
    jekyll new $project
     
    
}
