cmd_post-add_help() {
    cat <<_EOF
    post-add <project> <post_file_hard_link> 
         Add post to given project.
_EOF
}

cmd_post-add() {
    # copy post_file in post dirictory 
    local project=$1
    local post=$2
    [[ -n $project ]] || fail "Usage:\n $(cmd_post-add_help)"
    [[ -n $post ]] || fail "Usage:\n $(cmd_post-add_help)"
    
    if [[ -d $project ]]; then 
        cp $post $project/_posts/ 
    else
        echo "There is no project like this" 
    fi
    
    
}
