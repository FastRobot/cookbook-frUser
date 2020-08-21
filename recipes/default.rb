#
# Cookbook:: frUser
# Recipe:: default
#
# Copyright:: 2013, Fast Robot, LLC

# installs all the users who have the group "fastrobot" and are in the users/ databag
# bag is currently hosted in hosted chef at opscode
# I expect this to be among the first recipes run on any work box

users_manage 'fastrobot' do
  group_id 2048
  action [ :create ]
  data_bag 'users'
end

# and everybody in that group gets sudo ALL with no password, cause fuck it
sudo 'fastrobot' do
  group 'fastrobot'
  nopasswd true
end

# lock any default accounts
%w(build pi test user).each do |u|
  user u do
    action :lock
    only_if do
      begin
        Etc.getpwnam(u)
      rescue
        false
      end
    end
  end
end
