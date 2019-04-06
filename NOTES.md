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

9. add to views/pictures
    new.html.haml
    _form.html.haml
__

10. $ rails generate simple_form:install --bootstrap

11. rename views/layouts/application.html.erb
    application.html.haml

12. added update, edit and destroy functionality in pictures_controller.rb

13. $ rails generate devise:install
    configure 4 steps

14. $ rails g devise User

15. $ rake db:migrate
