source "https://rubygems.org"

gem "rails", "4.1.2"

gem "unicorn"
gem "unicorn-rails"

gem "mysql2", ">= 0.3.14"

# uncomment to use PostgreSQL
# gem "pg"
#
# NOTE: If you use PostgreSQL, you must still leave enabled the above mysql2
# gem for Sphinx full text search to function.

gem "thinking-sphinx", "~> 3.1.1"

gem "uglifier", ">= 1.3.0"
gem "jquery-rails"
gem "dynamic_form"

gem "exception_notification"

gem "bcrypt", "~> 3.1.2"

gem "nokogiri", "= 1.6.1"
gem "htmlentities"
gem "rdiscount"

# for twitter-posting bot
gem "oauth"

# for parsing incoming mail
gem "mail"

# for planet rss aggregation
gem "feed-normalizer"
gem "loofah"

# JS Runtime
gem 'therubyracer', '0.12.1', platforms: :ruby

group :test, :development do
  gem 'dotenv-rails'
  gem "rspec-rails", "~> 2.6"
  gem "machinist"
  gem "sqlite3"
  gem "faker"
end
