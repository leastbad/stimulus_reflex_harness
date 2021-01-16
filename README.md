# CableReady test suite

Purpose: Verify all 25 CR operations behave as expected.

Prerequisites: Redis

Setup: 
`bundle config local.cable_ready /path/to/cable_ready`
`yarn link cable_ready`

Point your `cable_ready` to the correct local branch in `Gemfile`

To install: `bundle install && yarn install && rake db:setup && rake db:migrate`

Optional: `bin/webpack-dev-server`

To run: `rails s`
