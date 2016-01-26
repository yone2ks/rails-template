# -*- coding: utf-8 -*-
# template.rb

@app_name = app_name

# delete README.rdoc 
run 'rm README.rdoc'

# HTML Template Engine
gem 'slim-rails'

# Bootstrap & Bootswatch & font-awesome
gem 'bootstrap-sass'
gem 'bootswatch-rails'
gem 'font-awesome-rails'

# turbolinks support
gem 'jquery-turbolinks'


gem_group :development, :test do
  gem 'spring'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rspec-rails'
  gem 'guard-rspec'                        # railsでguardを使うためのGem
  gem 'spring-commands-rspec' , '~> 1.0.2' # springでキャッシュした状態でguardを使うためのGem
  gem "factory_girl_rails" , "~> 4.4.1"    # テストデータの作成
end

run 'bundle install --path vendor/bundle'
generate 'rspec:install'

# git initalize setting
after_bundle do
  git :init
  git add: '.'
  git commit: %Q{ -m 'Initial commit' }
end

