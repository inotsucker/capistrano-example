# config valid only for Capistrano 3.1
# require 'capistrano/ext/multistage'
lock "~> 3.11.0"

set :ssh_options, { 
  forward_agent: true,  
  keys: "~/.ssh/id_rsa" 
}

set :application, 'capistrano_example'
set :branch, "master"
set :repo_url, 'git@github.com:inotsucker/capistrano-example.git'

set :deploy_to, "/var/www/#{fetch(:application)}/"
set :deploy_user, "deploy"

set :linked_dirs, %w(my_shared_directory)

namespace :deploy do


    desc 'Print The Server Name'
    task :print_server_name do
      on roles(:app), in: :groups, limit:1 do
        execute "hostname"
      end
    end

end

after "deploy:updated", "deploy:print_server_name"
