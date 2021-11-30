# StimulusReflex test harness app

Purpose: Verify a bare-bones SR application. Branch it to build MCVEs.

Prerequisites: Postgres and Redis

To install: `bundle install && yarn install && rake db:setup && rake db:migrate`

Optional: `bin/webpack-dev-server`

To run: `rails s`

I realize that it might seem odd to have a repo intended for MCVEs to have no testing infrastructure set up. As a not-experienced programmatic tester, it seems like I'm the wrong person to tell you how to test what you want to test.
