source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'

gem 'jbuilder', '~> 2.5'
gem 'active_model_serializers', github: 'rails-api/active_model_serializers', branch: '0-10-stable'

gem 'ipaddress'
gem 'rails_ip_validator'

gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'

# API Documentation Tool
gem 'apipie-rails', github: 'Apipie/apipie-rails'

group :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'rails-controller-testing'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
