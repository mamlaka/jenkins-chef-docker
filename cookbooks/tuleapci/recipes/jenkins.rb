file "/jenkins/.ssh/known_hosts" do
    owner "jenkins"
    content node['users']['jenkins']['known_hosts'].join("\n")
    mode 00600
    action :create_if_missing
end

# Add ssh private key
file "/jenkins/.ssh/id_rsa" do
  owner   "jenkins"
  mode    00600
  content node['users']['jenkins']['rsa']
  action  :create_if_missing
end

file "/jenkins/.ssh/id_rsa.pub" do
  owner   "jenkins"
  mode    00600
  content node['users']['jenkins']['rsa.pub']
  action  :create_if_missing
end

# Jenkins dependencies                                                      
# package 'java-1.7.0-openjdk'
