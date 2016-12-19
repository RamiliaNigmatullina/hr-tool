source "https://rubygems.org"

ruby "2.3.3"

gem "pg"
gem "rails", "5.0.0.1"

# assets
gem "autoprefixer-rails"
gem "coffee-rails"
gem "foundation-icons-sass-rails"
gem "foundation-rails"
gem "jquery-datatables-rails"
gem "jquery-rails"
gem "premailer-rails"
gem "sass-rails", "~> 5.0.0"
gem "uglifier", ">= 2.7.2"

# views
gem "active_link_to"
gem "inky-rb", require: "inky"
gem "simple_form"
gem "slim"

# all other gems
gem "decent_decoration"
gem "decent_exposure"
gem "devise"
gem "draper", "3.0.0.pre1"
gem "google-analytics-rails"
gem "health_check"
gem "interactor"
gem "kaminari"
gem "omniauth"
gem "omniauth-google-oauth2"
gem "puma"
gem "pundit"
gem "rack-canonical-host"
gem "rails-i18n"
gem "responders"
gem "rollbar"
gem "seedbank"
gem "stackprof"

group :staging, :production do
  gem "rails_stdout_logging"
end

group :test do
  gem "capybara"
  gem "codeclimate-test-reporter", require: false
  gem "database_cleaner"
  gem "email_spec"
  gem "formulaic"
  gem "launchy"
  gem "rspec-its"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "simplecov"
  gem "webmock", require: false
end

group :development, :test do
  gem "awesome_print"
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "byebug"
  gem "coffeelint"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "faker"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.4"
  gem "rubocop", require: false
  gem "rubocop-rspec", require: false
  gem "scss_lint", require: false
  gem "slim_lint", require: false
end

group :development do
  gem "bullet"
  gem "foreman", require: false
  gem "letter_opener_web"
  gem "rails-erd"
  gem "slim-rails"
  gem "web-console", "~> 2.0"
end
