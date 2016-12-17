source "https://rubygems.org"

ruby "2.3.3"

gem "rails", "4.2.7.1"
gem "pg"

# assets
gem "autoprefixer-rails"
gem "coffee-rails"
gem "foundation-icons-sass-rails"
gem "foundation-rails"
gem "jquery-rails"
gem "premailer-rails"
gem "sass-rails", "~> 5.0.0"
gem "uglifier", ">= 2.7.2"
gem "jquery-datatables-rails", "~> 3.4.0"

# views
gem "active_link_to"
gem "inky-rb", require: "inky"
gem "metamagic"
gem "simple_form"
gem "slim"

# all other gems
gem "decent_decoration"
gem "decent_exposure"
gem "devise", "3.5.6"
gem "draper"
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
  gem "selenium-webdriver"
  gem "codeclimate-test-reporter", require: false
  gem "database_cleaner"
  gem "email_spec"
  gem "formulaic"
  gem "launchy"
  gem "rspec-its"
  gem "shoulda-matchers"
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
  gem "letter_opener_web", "~> 1.2.0"
  gem "quiet_assets"
  gem "rails-erd"
  gem "slim-rails"
  gem "web-console", "~> 2.0"
end
