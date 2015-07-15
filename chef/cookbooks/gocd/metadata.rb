name             'base'
maintainer       'Arthur Santos'
maintainer_email 'arthur.luiz@gmail.com'
license          'All rights reserved'
description      'Setup basic node.js installation'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

require "digest"
require "base64"

depends 'base'
depends 'rails-base'