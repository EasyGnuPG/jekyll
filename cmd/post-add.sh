cmd_post-add()_help() {
    cat <<_EOF
    post-add <project> <post_file_link> 
         Add post to given project.
_EOF
}

cmd_post-add() {
    # copy post_file in post dirictory 
    local project=$1
    local post=$2
    [[ -n $project ]] || fail "Usage:\n $(cmd_clone_help)"
    
    [[ -f $post ]] || cp $APP_DIR/$post .
    
    docker cp $post $CONTAINER:$project/_posts/
    
}
