name             'wordpress'
maintainer       'Arthur Santos'
maintainer_email 'arthur.luiz@gmail.com'
license          'All rights reserved'
description      'Setup basic requirements for Wordpress development environment'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt'
depends 'php-base'
depends 'wordpress'