Rails.application.routes.draw do
  mount StimulusReflex::Engine => "/stimulus_reflex"
  get "fetch", to: "home#fetch", constraints: lambda { |request| request.xhr? } 
  root "home#index"
end
