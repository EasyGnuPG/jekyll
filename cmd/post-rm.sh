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

    if [[ -d $project ]]; then 
        if [[ -d $post ]]; then 
         rm -rf $project/_posts/$post
        else
        echo "There is no post exist with this name"
        fi
    else
        echo "There is no project like this" 
    fi
    
    
    
}
