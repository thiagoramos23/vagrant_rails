node.default['rvm']['default_ruby'] = 'ruby-2.1'
node.default['rvm']['user_default_ruby'] = 'ruby-2.1'

node.default['rvm']['global_gems'] = [
  { 'name'    => 'bundler' },
  { 'name'    => 'rails' }
]