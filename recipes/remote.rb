users_manage 'wtrc' do
  group_id 2049
  action [ :create ]
  data_bag 'users'
end

# and everybody in that group gets sudo ALL with no password, cause fuck it
sudo 'wtrc' do
  group 'wtrc'
  nopasswd true
end
