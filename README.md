# StimulusReflex test harness app

Purpose: Verify a bare-bones SR application. Branch it to build MCVEs.

Prerequisites: Postgres and Redis

Preamble: `bundle config local.stimulus_reflex /path/to/stimulus_reflex`

Point your `stimulus_reflex` to the correct local branch in `Gemfile`

To install: `bundle install && yarn install && rake db:setup && rake db:migrate`

Optional: `bin/webpack-dev-server`

To run: `rails s`

Notes!

If webpacker is giving you trouble, please compile a build version by following the instructions in https://docs.stimulusreflex.com/setup#running-edge

This was generated initially with: `rails new harness --skip-sprockets --skip-spring --skip-coffee --webpack=stimulus --skip-action-mailbox --skip-action-mailer --skip-active-storage --skip-test --skip-action-text --skip-turbolinks --skip-bootsnap`

I'll probably come to regret not including Turbolinks but I wanted everything stripped-down and side-effect free.

I realize that it might seem odd to have a repo intended for MCVEs to have no testing infrastructure set up. As a not-experienced programmatic tester, it seems like I'm the wrong person to tell you how to test what you want to test.
