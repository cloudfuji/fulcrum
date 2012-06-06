source 'http://rubygems.org'

# Allows easy switching between locally developed gems, and gems installed from rubygems.org
# See README for more info at: https://github.com/ndbroadbent/bundler_local_development
gem 'bundler_local_development', :group => :development, :require => false
begin
  require 'bundler_local_development'
rescue LoadError
end

gem 'rails', '~> 3.2.2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.2.0"
  gem 'uglifier'
  gem 'compass-rails'
  gem 'ejs'
end

gem 'jquery-rails'

gem 'devise', '~> 1.5.0'
gem 'cancan', '1.6.1'
gem 'transitions', '0.0.9', :require => ["transitions", "active_record/transitions"]

# Cloudfuji-related deps
gem 'fulcrum_cloudfuji', ">= 0.2.2"
gem 'tane', '>= 0.0.5', :group => :development
gem 'airbrake_user_attributes', '>= 0.1.3'

gem 'fastercsv', '1.5.3', :platforms => :ruby_18
# (using standard csv lib if ruby version is 1.9)

group :production do
  gem 'pg'
  # Use thin for development
  gem 'thin', :platform => :ruby
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'factory_girl_rails' unless ENV['HOSTING_PLATFORM'] == "CLOUDFUJI"
  gem 'jasmine', '1.1.0'
  gem 'capybara'
  gem 'database_cleaner'
  unless ENV["CI"]
    gem 'ruby-debug', :platform => :mri_18
    gem (RUBY_VERSION == "1.9.2" ? 'ruby-debug19' : 'debugger'), :platform => :mri_19
  end
end
