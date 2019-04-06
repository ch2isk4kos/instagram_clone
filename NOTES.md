1. $ rails new instagramm

2. push to github
$ git add .
$ git commit -m "initial commit"
$ git remote add origin git@github.com:ch2isk4kos/instagram_clone.git
$ git push origin master

3. add gems to Gemfile
    gem 'devise', '~> 4.6'          # authentication
    gem 'haml', '~> 5.0'            # styling (in place of .html.erb)
    gem 'simple_form', '~> 4.1'     # form templates
    gem 'bootstrap-sass', '~> 3.4'  #

4. $ bundle install

5. $ rails generate model Picture title:string description:text

6. $ rake db:migrate

7. $ rails generate controller Pictures

8. add to /routes.rb
    resources :pictures
    root 'pictures#index'
