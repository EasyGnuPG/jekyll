cmd_create_help() {
    cat <<_EOF
    create
        Create the container '$CONTAINER'.

_EOF
}
rename_function cmd_create ds_cmd_create

cmd_create(){
	mkdir -p  /var/jekyll
	ds_cmd_create \ 
		--workdir /var/jekyll
}
