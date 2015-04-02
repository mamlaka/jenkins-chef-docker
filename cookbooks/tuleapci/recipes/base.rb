include_recipe 'tuleapci::jenkins'

package 'docker'

group 'dockerroot' do
  action :modify
  members "jenkins"
  append true
end

file "/var/run/docker.sock" do
  group 'dockerroot'
  action :modify
end

service 'docker' do
  action [ :enable, :start ]
end
