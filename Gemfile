source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
ruby '2.3.1'
gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  gem 'byebug', platform: :mri
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
#gem "administrate", "~> 0.3.0"
gem "administrate","~> 0.4.0"
#gem "administrate", git: "https://github.com/thoughtbot/administrate"
gem 'bootstrap', '~> 4.0.0.alpha3.1'
gem 'bourbon'
gem 'devise'
gem 'devise_invitable'
gem 'mysql2', '~> 0.3.18'
gem 'pundit'
#gem 'therubyracer', :platform=>:ruby
gem 'sir_trevor_rails'
gem 'paperclip'
gem 'cocoon'
gem 'mailgun_rails'

gem "administrate-field-nested_has_many",
     git: "https://github.com/ombulabs/administrate-field-nested_has_many"
#      git: "https://github.com/NedelescuVlad/administrate-field-nested_has_many"
gem 'administrate-field-date_picker', '~> 0.0.4'

gem 'validates_timeliness', '~> 4.0'

gem "simple_calendar", "~> 2.0"
 

group :development do
  gem 'better_errors'
  gem 'hub', :require=>nil
  gem 'rails_layout'
end
