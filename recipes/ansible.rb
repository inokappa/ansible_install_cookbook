remote_file node['epel']['work_dir'] + node['epel']['file_name'] do
  source node['epel']['uri_path']
  not_if {File.exists?(node['epel']['work_dir'] + node['epel']['file_name'])}
end

execute "install epel" do
  command "rpm -Uvh 'node['epel']['work_dir'] + node['epel']['file_name']'"
  not_if {File.exists?(node['epel']['repo_file_path'])}
end

package "ansible" do
  action :install
  not_if {File.exists?(node['ansible']['install_path'])}
end

