maintainer 'Thomas Meeus'
maintainer_email 'thomas@sector7g.be'
license 'MIT'
description 'Installs and configures sabnzbd'
version '1.2.0'
name 'sabnzbd'

supports 'ubuntu', '>= 12.10'

%w(debian ubuntu).each do |os|
  supports os
end

depends 'apt'
