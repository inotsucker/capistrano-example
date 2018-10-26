# config valid only for Capistrano 3.1
# require 'capistrano/ext/multistage'
lock "~> 3.11.0"

set :stages, ["production"]
set :default_stage, "production"
set :ssh_options, { 
  forward_agent: true, 
  accept_new_or_local_tunnel: true, 
  keys: "~/.ssh/id_rsa" 
}

set :application, 'capistrano_example'
set :repo_url, 'git@github.com:inotsucker/capistrano-example.git'
set :user, "inotsucker"

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
