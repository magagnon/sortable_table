ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require File.expand_path(File.dirname(__FILE__) + '/shoulda_macros')
require File.expand_path(File.dirname(__FILE__) + '/fail_macros')

#Dir[File.join(RAILS_ROOT, 'test', 'factories', '*.rb')].each do |file|
#  require file
#end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  #self.backtrace_silencers << :rails_vendor
  #self.backtrace_filters   << :rails_root

  self.use_transactional_fixtures = true
  self.use_instantiated_fixtures  = false

  # Add more helper methods to be used by all tests here...
end
