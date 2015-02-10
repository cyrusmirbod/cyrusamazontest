source 'https://rubygems.org'

gem 'rake'
gem 'cucumber'
gem 'rspec'
gem 'page-object'
gem 'require_all'
gem 'fig_newton'
gem 'data_magic'
gem 'test-unit'

RSpec.configure do |config|
  # ...
  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end