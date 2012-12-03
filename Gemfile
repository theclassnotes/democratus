source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'mysql2'
gem 'thin'
gem 'pg'

# Slim rendering engine (alternative to ERB)
gem 'slim'
gem 'mobylette'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'execjs'
  gem 'therubyracer'
  gem 'uglifier', '>= 1.0.3'
end

group :test, :development do
  gem "rspec"
  gem 'rspec-rails', "~> 2.0"
  gem "factory_girl_rails", "< 2.0"
  gem "factory_girl", "< 3.0"
  gem "brakeman", "~> 1.7.0"
  case RUBY_PLATFORM
    when /darwin/
      gem 'rb-fsevent'
    when /linux/
      gem 'rb-inotify', '~> 0.8.8'
  end
end

gem 'jquery-rails'

# Use exception notifier
gem 'exception_notification', :require => 'exception_notifier'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Authentication
gem 'devise'
gem 'omniauth'

