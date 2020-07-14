# README #

### Project dependencies ###

Project requires Ruby version ruby-2.6.3
If you have Ruby installed, access the folder on your computer and run
```
bundle install
```

Install RSpec
```
rails generate rspec:install
```

In application.yml configure with your machine's db username and password.

Create db and migrations
```
rake db:create db:migrate
```
```
rails s
```

### Import ###

Access the browser localhost: 3000 and you will have an input to include the file and send.
After that, the gross revenue will be informed

