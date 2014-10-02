include_recipe 'tuleapci::jenkins'

execute "Install docker" do
  command "curl -sSL https://get.docker.io/ubuntu/ | sh"
end

group 'docker' do
  action :modify
  members "jenkins"
  append true
end

service 'docker' do
  action [ :enable, :start ]
end
