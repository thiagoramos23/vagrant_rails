node.normal['rvm']['default_ruby'] = 'ruby-2.1'
node.normal['rvm']['user_default_ruby'] = 'ruby-2.1'

node.normal['rvm']['global_gems'] = [
  { 'name'    => 'bundler' },
  { 'name'    => 'rails' }
]