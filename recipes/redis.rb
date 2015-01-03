include_recipe 'monit::default'

template '/etc/monit/conf.d/redis.conf' do
  owner 'root'
  group 'root'
  mode '0700'
  source 'redis.conf.erb'
  notifies :run, 'execute[restart-monit]', :immediately
end
