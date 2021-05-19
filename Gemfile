source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'puma', '~> 4.3'
gem 'rails', '~> 5.1.1'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3', '~> 1.3.6'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap', '~> 4.3.1'
gem "rails-html-sanitizer", "~> 1.0.4"
gem "sprockets", "~> 3.7.2"
gem "loofah", "~> 2.2.3"
gem "rack", "~> 2.0.6"
gem "activejob", "~> 5.1.6.1"
gem "actionview", "~> 5.1.6.2"
gem 'rails-controller-testing'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'pry-byebug'
  gem 'database_cleaner'
  gem 'shoulda-matchers'

end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
