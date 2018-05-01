cmd_create_help() {
    cat <<_EOF
    create
        Create the container '$CONTAINER'.

_EOF
}
rename_function cmd_create ds_cmd_create

cmd_create(){
	#there are no log file for jekyll in offical version so no log file mount	
	ds_cmd_create
}
