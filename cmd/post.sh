cmd_config_help() {
    cat <<_EOF
    config
        Run configuration scripts inside the container.

_EOF
}

cmd_config() {
    # copy post_file in post dirictory 
    echo 'enter the path of post file'
    read $file
    echo 'enter the path of project name'
    read $project 
    [[ -f $file ]] || cp $APP_DIR/$file .
    
    docker cp $file $CONTAINER:$project/_posts/
    
}
