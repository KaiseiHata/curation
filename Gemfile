source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
#UI/UX
gem 'font-awesome-rails'
gem 'bootstrap-sass'
gem 'jquery-rails'

# 役割定義
gem 'cancancan'

# ユーザー機能
gem 'devise'
gem 'devise-i18n'

# 各種ファイル設定用
gem 'dotenv-rails', require: 'dotenv/rails-now'

# 検索機能
gem 'ransack'

# ページネーション
gem 'kaminari'

# アップロード用
gem 'carrierwave'
gem 'mini_magick'
gem 'fog'
# ↑クラウドに画像をあげる関連でやらかしたときに見直す！
# Thank you for installing fog!

# IMPORTANT NOTICE:
# If there's a metagem available for your cloud provider, e.g. `fog-aws`,
# you should be using it instead of requiring the full fog collection to avoid
# unnecessary dependencies.

# 'fog' should be required explicitly only if:
# - The provider you use doesn't yet have a metagem available.
# - You require Ruby 1.9.3 support.


# フォーム
gem 'bootstrap_form'

# Model拡張
gem 'active_hash'

# 管理画面
gem 'adminlte2-rails'

gem 'twitter'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'pry-rails'
  gem 'awesome_print'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
