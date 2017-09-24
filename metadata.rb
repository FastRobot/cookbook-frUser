name             'frUser'
maintainer       'Fast Robot, LLC'
maintainer_email 'cookbooks@fastrobot.com'
license          'apachev2'
description      'Installs/Configures FastRobot designated users'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

%w{ ubuntu debian redhat centos fedora freebsd}.each do |os|
  supports os
end

depends 'users', '~> 5.1'
depends 'sudo'
