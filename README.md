# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Setup

1. git clone https://github.com/wizbren/jungle-rails.git
2. cd jungle-rails && bundle install
3. Copy config files:
    - cp config/database.example.yml config/database.yml
    - cp config/secrets.example.yml config/secrets.yml
4. cp .env.example .env
5. Start PostgreSQL and run:
    - bin/rails db:reset
6. Start the server:
    - bin/rails server -b 0.0.0.0
7. Visit http://localhost:3000

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
