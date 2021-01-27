source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 4.1'
gem 'webpacker', '~> 4.0'
gem "redis", ">= 4.0", :require => ["redis", "redis/connection/hiredis"]
gem "hiredis"

gem "stimulus_reflex", github: "hopsoft/stimulus_reflex", branch: "master"
gem "cable_ready", github: "hopsoft/cable_ready", branch: "heads/joshleblanc/stream_from"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'standard'
end
