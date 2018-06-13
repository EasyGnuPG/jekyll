cmd_project-config-rm_help() {
    cat <<_EOF
    project-rm <Project>
         Delete project apache config.
       
_EOF
}

cmd_project-config-rm() {
    # Delete project apache config
	
	local project=$1
    	
    	
    	[[ -n $project ]] || fail "Usage:\n $(cmd_project-rm_help)"
	
	ds inject jekyll-apache2-config-del.sh $project
    
    	
}
