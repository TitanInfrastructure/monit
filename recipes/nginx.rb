include_recipe 'monit::default'

template '/etc/monit/conf.d/nginx.conf' do
  owner 'root'
  group 'root'
  mode '0700'
  source 'nginx.conf.erb'
  notifies :run, 'execute[restart-monit]', :immediately
end
