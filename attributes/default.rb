# 
default['epel']['work_dir'] = '/tmp/'

# 
default['epel']['os_ver_num'] = '6'
default['epel']['ver_num'] = '6-8'
default['epel']['arch'] = 'x86_64'
default['epel']['repo_url_path'] = 'http://ftp.riken.jp/Linux/fedora/epel/'
default['epel']['file_name'] = "epel-release-#{default['epel']['ver_num']}.noarch.rpm"
default['epel']['uri_path'] = "#{default['epel']['repo_url_path']}" + "/" + "#{default['epel']['os_ver_num']}" + "/" + "#{default['epel']['arch']}" + "/" + "#{default['epel']['file_name']}"
#
default['epel']['repo_dir_path'] = '/etc/yum.repos.d/'
default['epel']['repo_file_name'] = 'epel.repo'
default['epel']['repo_enabled_file'] = 'epel.enabled'
default['epel']['repo_file_path'] = "#{default['epel']['repo_dir_path']}" + "#{default['epel']['repo_file_name']}"
default['epel']['repo_enabled_path'] = "#{default['epel']['repo_dir_path']}" + "#{default['epel']['repo_enabled_file']}"
# 
default['ansible']['install_path'] = '/usr/bin/ansible'
