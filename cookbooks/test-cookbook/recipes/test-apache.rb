# apache/recipes/default.rb Update the system
execute 'apt-get update' do
  command 'apt-get update'
  user 'root'
  action :run end
# Install Apache HTTP server
package 'apache2' do
  action :install end
# Ensure the apache service is enabled and running
#
service 'apache2' do
  action [:enable,:start] end
# Create a simple HTML page
file '/var/www/html/index.html' do
  content '<html><body><h1>Apache Server Configured by Chef!</h1></body></html>'
  action :create end
