#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Include the nodejs recipe
include_recipe("nodejs")

nodejs_npm "pm2" do
  action [:install]
end

# Installs nginx
package "nginx" do
  action [:install]
end

# Starts nginx
service "nginx" do
  action [:enable, :start]
end

template "/etc/nginx/sites-available/proxy.conf" do
  action :create
end
