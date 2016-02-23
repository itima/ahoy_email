require "bundler/setup"
Bundler.require(:default)
require "minitest/autorun"
require "minitest/pride"
require "combustion"

Minitest::Test = Minitest::Unit::TestCase unless defined?(Minitest::Test)

Combustion.path = "test/internal"
Combustion.initialize! :all

ActionMailer::Base.delivery_method = :test
