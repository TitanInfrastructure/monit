include_recipe 'monit::default'

template '/etc/monit/conf.d/memcached.conf' do
  owner 'root'
  group 'root'
  mode '0700'
  source 'memcached.conf.erb'
  notifies :run, 'execute[restart-monit]', :immediately
end

