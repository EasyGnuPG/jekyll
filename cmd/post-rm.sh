cmd_post-rm()_help() {
    cat <<_EOF
    post-rm <project> <post_file_name> 
         Remove the post from given project.
_EOF
}

cmd_post-rm() {
    # copy post_file in post dirictory 
    local project=$1
    local post=$2
    [[ -n $project ]] || fail "Usage:\n $(cmd_clone_help)"
    [[ -n $post ]] || fail "Usage:\n $(cmd_clone_help)"

    [[ -f $post ]] || cp $APP_DIR/$post .
    
    rm -rf $project/_posts/$post
    
}
