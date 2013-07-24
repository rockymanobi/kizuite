source 'https://rubygems.org'
ruby "1.9.3"
gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :production do
   gem 'pg'
end

gem 'factory_girl_rails'
gem 'acts-as-taggable-on'

group :test, :development do
  gem 'sqlite3'
  gem "rails-erd"

  gem 'rspec-rails'
  gem 'rails3-generators'
  gem 'webrat'
  gem 'spork'
  gem 'rb-fsevent'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'growl'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'bootstrap-sass', '~> 2.3.1.0'
  gem 'compass-rails'

  gem 'zurui-sass-rails'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'validates_email_format_of'


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
