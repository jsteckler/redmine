source 'https://rubygems.org'

ruby '>= 3.1.0', '< 3.4.0'

gem 'rails', '7.2.0'
gem 'rouge', '~> 4.2'
gem 'mini_mime', '~> 1.1.0'
gem "actionpack-xml_parser"
gem 'roadie-rails', '~> 3.2.0'
gem 'marcel'
gem 'mail', '~> 2.8.1'
gem 'nokogiri', '~> 1.16.0'
gem 'i18n', '~> 1.14.1'
gem 'rbpdf', '~> 1.21.3'
gem 'addressable'
gem 'rubyzip', '~> 2.3.0'
gem 'propshaft', '~> 0.8.0'
gem 'rack', '>= 3.1.3'

#  Ruby Standard Gems
gem 'csv', '~> 3.2.8'
gem 'net-imap', '~> 0.4.8'
gem 'net-pop', '~> 0.1.2'
gem 'net-smtp', '~> 0.4.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :x64_mingw, :mswin]

# TOTP-based 2-factor authentication
gem 'rotp', '>= 5.0.0'
gem 'rqrcode'

# HTML pipeline and sanitization
gem "html-pipeline", "~> 2.13.2"
gem "sanitize", "~> 6.0"

gem 'dotenv-rails'
gem 'pg'

# Optional gem for LDAP authentication
group :ldap do
  gem 'net-ldap', '~> 0.17.0'
end

# Optional gem for exporting the gantt to a PNG file
group :minimagick do
  gem 'mini_magick', '~> 4.13.0'
end

# Optional Markdown support
group :markdown do
  gem 'redcarpet', '~> 3.6.0'
end

# Optional CommonMark support, not for JRuby
group :common_mark do
  gem "commonmarker", '~> 0.23.8'
  gem 'deckar01-task_list', '2.3.2'
end

# Include database gems for the adapters found in the database
# configuration file
require 'erb'
require 'yaml'

group :development, :test do
  gem 'debug'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'yard', require: false
end

group :test do
  gem "rails-dom-testing"
  gem 'mocha', '>= 2.0.1'
  gem 'simplecov', '~> 0.22.0', :require => false
  gem "ffi", platforms: [:mingw, :x64_mingw, :mswin]
  # For running system tests
  gem 'puma'
  gem "capybara", ">= 3.39"
  gem 'selenium-webdriver', '>= 4.11.0'
  # RuboCop
  gem 'rubocop', '~> 1.65.0', require: false
  gem 'rubocop-performance', '~> 1.21.0', require: false
  gem 'rubocop-rails', '~> 2.25.0', require: false
end

local_gemfile = File.join(File.dirname(__FILE__), "Gemfile.local")
if File.exist?(local_gemfile)
  eval_gemfile local_gemfile
end

# Load plugins' Gemfiles
Dir.glob File.expand_path("../plugins/*/{Gemfile,PluginGemfile}", __FILE__) do |file|
  eval_gemfile file
end
