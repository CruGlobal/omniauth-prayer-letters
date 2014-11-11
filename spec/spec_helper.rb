require 'bundler/setup'
require 'rspec'
require 'shared_examples'
Dir[File.expand_path('../support/**/*', __FILE__)].each { |f| require f }

RSpec.configure do |config|
end

