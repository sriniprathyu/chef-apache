package 'httpd'
file '/var/www/html/index.html' do 
  content "This server is the property of Chef
      HOSTNAME: #{node['hostname']}
      IPADDRESS: #{node['ipaddress']}"
end
service 'httpd' do
  action [:enable, :start]
end
