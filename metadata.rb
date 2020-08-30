name             'frUser'
maintainer       'Fast Robot, LLC'
maintainer_email 'cookbooks@fastrobot.com'
license          'Apache-2.0'
description      'Installs/Configures FastRobot designated users'
version          '0.2.2'

%w( ubuntu debian redhat centos fedora freebsd).each do |os|
  supports os
end

depends 'users', '~> 5.4'
depends 'sudo'
