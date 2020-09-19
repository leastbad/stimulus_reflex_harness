# StimulusReflex token authentication example

Purpose: Use a JWT token to authenticate ActionCable subscriptions

Prerequisites: Postgres and Redis

Create credentials: `rails credentials:edit --environment development` (see the template in `config/credentials/development.yml.example`) and generate a value for `DEVISE_JWT_SECRET_KEY` using `rails secret`

To install: `bundle install && yarn install && rake db:setup && rake db:migrate`

Optional: `bin/webpack-dev-server`

To run: `rails s`

Notes!

Open your Console Inspector to see the good vibes.

If you are logged in, your JWT token is being injected into your HEAD, where it is retrieved in your Stimulus index and used to create a subscription identifier.

In a real application it is important that you setup a real JWT key revocation strategy in your User model.

This was generated initially with: `rails new harness --skip-sprockets --skip-spring --skip-coffee --webpack=stimulus --skip-action-mailbox --skip-action-mailer --skip-active-storage --skip-test --skip-action-text --skip-turbolinks --skip-bootsnap`

I re-enabled ActionMailer for this demo.
