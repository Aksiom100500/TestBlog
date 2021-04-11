# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'active_storage_validations'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'cancancan'
gem 'capistrano-rails', group: :development
gem 'ckeditor'
gem 'devise'
gem 'fast_jsonapi'
gem 'foreman'
gem 'friendly_id'
gem 'jbuilder', '~> 2.5'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'oj'
gem 'puma', '~> 3.11'
gem 'rails', '~> 6.1'
gem 'redis', '~> 4.0'
gem 'sass-rails'
gem 'turbolinks', '~> 5'
gem 'webpacker'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
