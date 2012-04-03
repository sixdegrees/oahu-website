require 'bundler/capistrano'

set :repository, "git@github.com:sixdegrees/oahu-website.git"
set :scm, :git
set :use_sudo, false
set :deploy_via, :remote_cache
set :keep_releases, 4

set :flowdock_project_name, "Oahu Website"
set :flowdock_deploy_tags, ["oahu"] 
