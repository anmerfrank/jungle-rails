# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. This was a coding project from Lighthouse Labs, designed for web development students to practice bug fixes, automated testing, and UI improvements to existing and inherited projects. 


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Screenshots

!["Screenshot of homepage"](https://github.com/anmerfrank/jungle-rails/blob/master/docs/homepage.jpg)

!["Screenshot of all products"](https://github.com/anmerfrank/jungle-rails/blob/master/docs/all-products.jpg)

!["Screenshot - order placed"](https://github.com/anmerfrank/jungle-rails/blob/master/docs/order.jpg)
