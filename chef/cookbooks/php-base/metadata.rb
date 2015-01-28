name             'dynamus'
maintainer       'Arthur Santos'
maintainer_email 'arthur.luiz@gmail.com'
license          'All rights reserved'
description      'Setup basic requirements for PHP development environment'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt'
depends 'apache2'
depends 'mysql'
depends 'php'