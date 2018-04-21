Jekyll
======
Jekyll Container using ds framework


## Installation 
	
  - First install `ds` and `wsproxy`: 
	+ https://github.com/docker-scripts/ds#installation 
	+ https://github.com/docker-script/wsproxy#installation

  - Then get the scripts from github: `git clone https://github.com/jd147/jekyll` or `git pull jekyll`

  - Change dir to /opt/docker-scripts/jekyll

  - Create a directory for the container: `ds init jekyll @jekyll`

  - Fix the settings:
	  ` cd /var/ds/hello/
	    nano settings.sh`

  - Build image: `ds @jekyll build` 

  - Create the container: `ds @jekyll create` 

  - Configure it: `ds @jekyll config`

  - Add to wsproxy: `ds wsproxy add jekyll.example.org`

## Access

To access site use port 4000 with hostname like this `jekyll.example.org:4000`

## Other Commands

  - Add New project: `ds @jekyll project-add project`

  - Remove a project: `ds @jekyll project-rm <Project>`

  - Change config file of given project: `ds @jekyll project-config <project>` 

  - Run the available projec: `ds @jekyll project-run <project>`

  - Add post to given project: `ds @jekyll post-add <project> <post_file_hard_link>`
	+ Note: The post file shold match the sample format given in samples/_posts
	+ Note: It rewrite the old file 

  - Remove the post from given project: `ds @jekyll post-rm <project> <post_file_name>` 
         
         


         
