source 'https://rubygems.org'

ruby '2.2.1'

gem 'rails', '4.2.4'

## Front-end
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'slim-rails'
gem 'materialize-sass'
gem 'ffaker'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'quiet_assets'

  ## tests
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'  
end
