source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '4.0.1'
gem 'rspec'
gem 'sass-rails', '4.0.1'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'jquery-rails', '3.0.4'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.2'

# Bootstrap 3
gem 'anjlab-bootstrap-rails', '~> 3.0.3.0', :require => 'bootstrap-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '0.3.20', require: false
end

group :development, :test do
	# TODO: Change to PostgreSQL on local env to lower chance of DB issues
	gem 'sqlite3', '1.3.8'
	gem 'rspec-rails', '2.13.1' 
end

group :test do
	# Selenium is a Capybara dependency
	gem 'selenium-webdriver', '2.35.1'
	# Allows for testing in an English-like syntax
	gem 'capybara', '2.1.0'
end

group :production do
	# PostgreSQL DB for production
	gem 'pg', '0.15.1'
	# 12factor is used by Heroku to serve static assets such as images and stylesheets
	gem 'rails_12factor', '0.0.2'
end

# Use ActiveModel has_secure_password
 gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
