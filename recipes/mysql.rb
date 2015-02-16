include_recipe 'monit::default'

template '/etc/monit/conf.d/mysql.conf' do
  owner 'root'
  group 'root'
  mode '0700'
  source 'mysql.conf.erb'
  notifies :run, 'execute[restart-monit]', :immediately
end