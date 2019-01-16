# Instagram

A place where you can be yourself.

## Technologies used
- Back-end
  - [Ruby on Rails](http://rubyonrails.org/)
  - [Devise](https://github.com/plataformatec/devise)
  - [Paperclip](https://github.com/thoughtbot/paperclip)
- Front-end
  - HTML
  - CSS
  - [Bootstrap](https://getbootstrap.com/)

## Getting started
Follow the instructions below to download a copy of the project and run it locally for testing and development purposes.

### Prerequisites
- Verify that a current version of Ruby is installed:
```
ruby -v
```
- Verify that PostgreSQL database is correctly installed on your local machine:
```
psql --version
```
- Verify that a current version of Rails is installed:
```
rails --version
```

### Installing
Follow the instructions below to get both a test and a development environment running
```
git clone https://github.com/mateuszstacel/Instagram
bundle install
bin/rails db:create
bin/rails db:migrate
bin/rails server # Start the server at localhost:3000
```
In a web browser, visit `localhost:3000` and register to Instagram to start posting.
