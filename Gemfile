source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Use autoprefixer
gem 'autoprefixer-rails'
# Use Secure Password
gem 'bcrypt', '3.1.7'
# use bootstrap
gem 'bootstrap-sass'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use postresql database
gem 'pg', '>= 0.19.0'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby, github: 'cowboyd/therubyracer'
# Turbolinks makes navigating your web application faster.
# Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# gem 'foreigner'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'pry-byebug' # デバッグを実施(Ruby 2.0以降で動作する)
  gem 'pry-doc'    # methodを表示
  gem 'pry-rails'  # rails console(もしくは、rails c)でirbの代わりにpryを使われる
  gem 'pry-stack_explorer'
  gem 'rubocop', require: false # コード規約チェックツール
  # Spring speeds up development by keeping your application running
  # in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Access an IRB console on exception pages
  # or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'rails_12factor'
end
