source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.3'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sassc', '~> 2.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2'
gem 'coffee-rails', '~> 4.1', '>= 4.1.1'

# Auth and roles
gem 'devise', '~> 4.5'
gem 'pundit', '~> 2.0'

# Mailing list
gem 'mailerlite', '~> 1.6'

# Styling
gem 'bootstrap', '~> 4.1'
gem 'formtastic', '~> 3.1'
gem 'font-awesome-sass', '~> 5.5'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 10.0', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.0'
  gem 'spring-watcher-listen', '~> 2.0'
  # Use Capistrano for deployment
  gem 'capistrano', '~> 3.11'
  gem 'capistrano-rails', '~> 1.4'
  gem 'capistrano-rvm', '~> 0.1'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.10'
  gem 'selenium-webdriver', '~> 3.141'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper', '~> 2.1'
end
