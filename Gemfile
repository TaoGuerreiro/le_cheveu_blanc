source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"


gem "bootsnap", require: false
gem "canonical-rails"
gem "cssbundling-rails"
gem "escompress", "~> 0.3.0"
gem "jbuilder"
gem "jsbundling-rails"
gem "kaminari-i18n", "~> 0.5.0"
gem "pg", "~> 1.1"
gem "postmark-rails"
gem "puma", "~> 5.0"
gem "rails-i18n"
gem "rails", "~> 7.0.8"
gem "redis", "~> 4.0"
gem "responders"
gem "solidus_auth_devise", "~> 2.5"
gem "solidus_i18n", "~> 2.0"
gem "solidus_stripe", "~> 5.0"
gem "solidus_support"
gem "solidus", "~> 4.2"
gem "sprockets-rails"
gem "stimulus-rails"
gem "truncate_html"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "view_component", "~> 3.0"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
  gem "rails-controller-testing", "~> 1.0.5"
  gem "rspec-activemodel-mocks", "~> 1.1.0"
  gem "factory_bot", ">= 4.8"
  gem "factory_bot_rails"
  gem "ffaker", "~> 2.13"
  gem "rubocop", "~> 1.0"
  gem "rubocop-performance", "~> 1.5"
  gem "rubocop-rails", "~> 2.3"
  gem "rubocop-rspec", "~> 2.0"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "capybara-screenshot", "~> 1.0"
  gem "database_cleaner", "~> 1.7"
end
