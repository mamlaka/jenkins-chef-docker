include_recipe 'tuleapci::jenkins'

package 'docker'

group 'docker' do
  action :modify
  members "jenkins"
  append true
end

service 'docker' do
  action [ :enable, :start ]
end
