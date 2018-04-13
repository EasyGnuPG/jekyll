cmd_post-rm_help() {
    cat <<_EOF
    post-rm <project> <post_file_name> 
         Remove the post from given project.
_EOF
}

cmd_post-rm() {
    # remove post_file from post dirictory 
    local project=$1
    local post=$2
    [[ -n $project ]] || fail "Usage:\n $(cmd_post-rm_help)"
    [[ -n $post ]] || fail "Usage:\n $(cmd_post-rm_help)"

    
    
    rm -rf $project/_posts/$post
    
}
