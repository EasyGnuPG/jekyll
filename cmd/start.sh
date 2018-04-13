cmd_config_help() {
    cat <<_EOF
    config
        Run configuration scripts inside the container.

_EOF
}

cmd_config() {
    # start project
    echo 'enter the project name'
    read $project
    cd $project/
    jekyll serve --host 127.0.0.1 
    
}
