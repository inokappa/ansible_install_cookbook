remote_file node['epel']['work_dir'] + node['epel']['file_name'] do
  source node['epel']['uri_path']
  not_if {File.exists?(node['epel']['work_dir'] + node['epel']['file_name'])}
end

execute "install_epel" do
  command "rpm -Uvh 'node['epel']['work_dir'] + node['epel']['file_name']'"
  not_if {File.exists?(node['epel']['repo_file_path'])}
end

bash "enable_epel" do
  user "root"
  cwd node['epel']['repo_dir_path']
  code <<-EOH
    sed -i 's/enabled=0/enabled=1/g' #{node['epel']['repo_file_path']} && \
    touch #{node['epel']['repo_dir_path']}/eple.enabled
  EOH
  not_if {File.exists?(node['epel']['repo_enabled_path'])}
end

package "ansible" do
  action :install
end

