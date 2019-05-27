# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

TO SETUP IN PRODUCTION 
with ruby, rails and sqlite installed,
you need to setup the rails_env to production(basic)
on the project folder, open linux console 
and put the commands bellow

    export RAILS_ENV=production
    bundle install
    rails db:create
    rails db:migrate
    rails s

this is the basic commands to run in production withou another WS
to run the test suite use(if you have used the command bundle install, jump the command now)
    export RAILS_ENV=test
    bundle install
    rails db:migrate

