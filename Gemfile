source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

gem 'rails', '~> 6.1.3.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.3'
gem 'webpacker', '~> 5.4'
gem "redis", ">= 4.2.5", :require => ["redis", "redis/connection/hiredis"]
gem "hiredis"

gem "stimulus_reflex", github: "hopsoft/stimulus_reflex", branch: "master"
gem "cable_ready", github: "hopsoft/cable_ready", branch: "master"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'standard'
end
