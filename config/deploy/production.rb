set :deploy_to, "/opt/lampp/htdocs/capistrano_example"

server '172.104.170.27', user: 'root', password: 'Yearoffun188!', roles: %w{web app db}