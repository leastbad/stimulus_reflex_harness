# StimulusReflex test harness app

Purpose: Verify a bare-bones SR application. Branch it to build MVCEs.

Prerequisites: Postgres and Redis

Preamble: `bundle config local.stimulus_reflex /path/to/stimulus_reflex`

Point your `stimulus_reflex` to the correct local branch in `Gemfile`

To install: `bundle install && yarn install && rake db:setup && rake db:migrate`

Optional: `bin/webpack-dev-server`

To run: `rails s`