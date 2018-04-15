cmd_config_help() {
    cat <<_EOF
    config
        Run configuration scripts inside the container.

_EOF
}

cmd_config() {
        
    ds inject set_prompt.sh
    apt install build-essential ruby-full 
    gem install bundler minima jekyll-feed
    jekyll -v
}
