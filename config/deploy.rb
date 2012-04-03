require 'bundler/capistrano'

############################################################

set :whenever_command, "bundle exec whenever"
set :application, "oahu.fr"
set :rvm_ruby_string, '1.9.3-p0'
set :rvm_type, :user
set :deploy_to, "/home/domains/oahu.fr/website"

############################################################

set :scm, :git
set :repository, "git@github.com:sixdegrees/oahu-website.git"
set :branch, 'master'

set :user,      "oahu.neue.fr"
set :top_domain, "oahu.fr"

set :use_sudo, false
set :keep_releases, 4
set :deploy_via, :remote_cache

############################################################

set :flowdock_project_name, "Oahu Website"
set :flowdock_deploy_tags, ["deploy", "oahu.fr"]
set :flowdock_api_token, "7a7cd062f2bbd3f7eb2e6b9dd61ef329"

############################################################

namespace :deploy do

end


require 'flowdock/capistrano'
