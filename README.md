To work with this repository
============================

$> git submodule init
$> git submodule update

On deployement
==============

On a fresh machine:

#1 install chef
   
    curl -L https://www.opscode.com/chef/install.sh | bash

#2 copy node.json.dist and adapt to your environment

#3 run chef-solo:

    chef-solo -c solo.rb -j node.json
