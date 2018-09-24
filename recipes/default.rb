#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Installs nginx
package "nginx" do
  action [:install]
end

# Starts nginx
service "nginx" do
  action [:enable, :start]
end
