############################################################

set :application, "oahu.fr"
set :rvm_ruby_string, '1.9.3-p0'
set :rvm_type, :user

############################################################

role :web,      "oahu.fr", :primary => true
role :app,      "oahu.fr", :primary => true
role :db,       "oahu.fr", :primary => true
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

namespace :deploy do

end


require 'flowdock/capistrano'
