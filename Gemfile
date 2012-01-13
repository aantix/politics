source 'http://rubygems.org'

#gem 'rails', :git => "git://github.com/rails/rails.git"
gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
#gem 'turkee', :git => 'git://github.com/aantix/turkee.git'
gem 'turkee', :path => "/Users/jjones/Projects/turkee"

gem 'youtube_search'
gem 'nested_form', :git => "git@github.com:aantix/nested_form.git"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  #gem 'bootstrap-sass'
  gem 'twitter-bootstrap-rails', :git => 'http://github.com/seyhunak/twitter-bootstrap-rails.git'
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
  gem "rspec"
  gem "rspec-rails"
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
  gem "rspec-rails"
  gem "rspec-instafail"
  gem "guard-rspec"
  gem "database_cleaner"
end

