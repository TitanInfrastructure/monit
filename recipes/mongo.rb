include_recipe 'monit::default'

template '/etc/monit/conf.d/mongo.conf' do
  owner 'root'
  group 'root'
  mode '0700'
  source 'mongo.conf.erb'
  notifies :run, 'execute[restart-monit]', :immediately
end
