source 'http://rubygems.org'

#gem 'rails', :git => "git://github.com/rails/rails.git"
gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
gem 'turkee', :git => 'git://github.com/aantix/turkee.git', :branch => 'turkee_rails31'
gem 'youtube_search'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails' #,   :git => 'git://github.com/rails/sass-rails'
  gem 'coffee-rails' #, :git => 'git://github.com/rails/coffee-rails'
  gem 'uglifier'
end


gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development do
  gem 'heroku'
end

group :production do
  gem 'pg'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false

  gem "spork", "> 0.9.0.rc"
  gem 'growl', '>= 1.0.3'
  gem "guard-spork"
  gem 'factory_girl', '>= 1.3.2'

  #if RUBY_PLATFORM.downcase.include?("darwin")
    gem 'rb-fsevent', ">= 0.4.3.1"
  #end
  gem "rspec"
  gem "guard-rspec"
end

group :test,:development do
  gem "rspec-rails"
end