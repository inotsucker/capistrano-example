#set :stages, ["production"]

#set :default_stage, "production"

#role :app, %w{deploy@172.104.170.27}
#role :web, %w{deploy@172.104.170.27}
#role :db,  %w{deploy@172.104.170.27}

#server '172.104.170.27', user: 'deploy', roles: %w{web app db}

#set :password, ask('Server password:', nil)
#server '172.104.170.27', user: 'deploy', password: fetch(:password), roles: %w{web app db}

#set :password, ask(:password, nil, echo: false)
#server '172.104.170.27', user: 'deploy', port: 22, password: fetch(:password), roles: %w{web app db}

server "172.104.170.27", user: "root", roles: ["app", "db", "web"]
