require 'sprinkle/core'
require 'sprinkle/imagemagick'
require 'sprinkle/ruby'

policy :development, roles: :vagrant do
  requires :git
  requires :essentials
  requires :mc
  requires :rvm
  requires :ruby2_1
end

deployment do
  delivery :ssh do
    role :vagrant, '127.0.0.1'
    port 2222
    user 'vagrant'
    keys ["#{File.expand_path(File.dirname(__FILE__))}/.vagrant/machines/default/virtualbox/private_key"]
  end

  source do
    prefix    '/usr/local'
    archives  '/usr/local/sources'
    builds    '/usr/local/build'
  end
end