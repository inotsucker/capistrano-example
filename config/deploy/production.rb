set :deploy_to, "/opt/lampp/htdocs/capistrano_example"

server '172.104.170.27', user: 'deploy', roles: %w{web app db}