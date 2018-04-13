# jekyll
Jekyll Container using ds framework


Installation First install ds: 
https://github.com/docker-scripts/ds#installation Then install wsproxy

Then get the scripts from github: 
git clone https://github.com/jd147/jekyll 

Copy repo data into /opt/docker-scripts/:
cp repodata /opt/docker-scripts/

Change dir to /opt/docker-scripts/jekyll

Create a directory for the container: 
ds init jekyll @jekyll

Fix the settings: cd /var/ds/hello/:
nano settings.sh

Build image: 
ds @jekyll build 

Create the container: 
ds @jekyll create 

Configure it: 
ds @jekyll config

Add to wsproxy: 
ds wsproxy add jekyll.example.org

Add New project:
ds @jekyll project-add <project>

Remove a project:
ds @jekyll project-rm <Project>

Change config file of given project:
ds @jekyll project-config <project> 

Run the available project:          
ds @jekyll project-run <project>

Add post to given project:
ds @jekyll post-add <project> <post_file_hard_link> 

Remove the post from given project:
ds @jekyll post-rm <project> <post_file_name> 
         
         


         
