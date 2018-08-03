#set phương thức ssh = public key (đây là lý do mà mình cần gen ssh-key cho framgia ngoại trừ việc up lên github)
set :ssh_options, {
  keys: %w(~/.ssh/id_rsa),
  forward_agent: true,
  port: 22,
  user: 'framgia',
}

# role :name, %{[user]@[IP adde.]}
role :app, %w{framgia@172.16.24.51}
role :web, %w{framgia@172.16.24.51}
role :db,  %w{framgia@172.16.24.51}

# Define server(s)
server '172.16.24.51', user: 'framgia', roles: %w{web}


