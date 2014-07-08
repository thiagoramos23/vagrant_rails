node.default['rvm']['default_ruby'] = 'ruby-2.1'
node.default['rvm']['user_default_ruby'] = 'ruby-2.1'

node.default['rvm']['user_installs'] = [
  {
    :user => 'vagrant',
    :default_ruby => 'ruby-2.1',
    :global_gems => [
      {
        :name => 'bundler'
      },
      {
        :name => 'rails'
      }
    ]
  }
]