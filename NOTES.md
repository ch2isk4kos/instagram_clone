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

16. Make User --< Picture Association

17. $ rails generate migration add_user_id_to_pictures user_id:integer:index

18. $ rake db:migrate

19. rename app/assests/stylesheets/application.css
    application.css.scss

20. integrate bootstrap-sass

21. add styling to app/assets/stylesheets/application.css.scss

22. add paperclip gem to Gemfile

23. $ bundle install

24. configure paperclip

23. $ brew install imagemagick

24. $ which convert

25. add image validation to picture.rb

26. $ rails generate paperclip picture image

27. $ rake db:migrate

28. add gem 'masonry-rails' to Gemfile

29. $ bundle install

30. add gem 'acts_as_votable' to Gemfile

31. $ rails generate acts_as_votable:migration

32. $ rake db:migrate

33. add to views/devise/registrations/edit.html.erb
           views/devise/sessions/new.html.erb
