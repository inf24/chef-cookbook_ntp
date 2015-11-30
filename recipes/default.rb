##
# Maximilian Sparenberg | Max.Sparenberg@icloud.com | inf24
##

package = node['ntp']['package']
service = node['ntp']['service']
file = node['ntp']['conf']['file']
platform = node['platform']

package "#{node['ntp']['package']}" do
  action :install
end

template "#{node['ntp']['conf']['file']}" do
  source "ntp.conf_#{platform}.erb"
  action :create
end

service "#{node['ntp']['service']}" do
  supports :status => true, :start => true, :restart => true, :stop => false
  action [ :enable, :start ]
end
