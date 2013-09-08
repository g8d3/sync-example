Unnamed
=======

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby version

See `.ruby-version` file.

* System dependencies

See `Gemfile` and `Gemfile.lock` files.

* Install gems

```
bundle binstubs rspec-core
rails generate rspec:install
Capybara.javascript_driver = :webkit
rails generate devise:install
rails generate devise MODEL
config.action_mailer.delivery_method = :letter_opener

```

* Configuration

See `config` directory.

* Database creation

Run `rake db:setup` to create DB and needed data.

* Database initialization

Run `rake db:setup` to create DB and needed data.

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

