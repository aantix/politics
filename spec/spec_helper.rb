require 'rubygems'
require "bundler/setup"

require 'factory_girl'
require 'rspec'
require 'spork'
require 'growl'
require 'rails/all'
require 'rspec/rails'
require 'database_cleaner'

require File.expand_path('../../config/environment', __FILE__)

DatabaseCleaner.strategy = :truncation

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  RSpec.configure do |config|
    # == Mock Framework
    # 
    # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
    #
    # config.mock_with :mocha
    # config.mock_with :flexmock
    # config.mock_with :rr
    config.mock_with :rspec

    #config.before(:suite) do
    #  DatabaseCleaner.strategy = :transaction
    #  DatabaseCleaner.clean_with(:truncation)
    #end
    #
    #config.before(:each) do
    #  DatabaseCleaner.start
    #end
    #
    #config.after(:each) do
    #  DatabaseCleaner.clean
    #end

    #config.fixture_path = "#{::Rails.root}/spec/fixtures"

    # If you're not using ActiveRecord, or you'd prefer not to run each of your
    # examples within a transaction, comment the following line or assign false
    # instead of true.
    config.use_transactional_fixtures = true
  end

end

Spork.each_run do
  # This code will be run each time you run your specs.
  DatabaseCleaner.clean

  FactoryGirl.find_definitions

  $LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'app', 'models')

  Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each {|f| require f}
  Dir["#{File.dirname(__FILE__)}/../app/models/**/*.rb"].each {|f| require f}
end