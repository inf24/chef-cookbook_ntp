require 'chefspec'
require 'chefspec/berkshelf'
require_relative 'support/matchers.rb'

ChefSpec::Coverage.start!

#RSpec.configure do |config|
#  config.platform = 'centos'
#  config.version = '7.0'
#end

#at_exit { ChefSpec::Coverage.report! }
