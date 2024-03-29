# frozen_string_literal: true

Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  get '/users' => 'users#show'
  resources :games, except: %i[new edit destroy]
  # this is the streaming interface
  get '/games/:id/watch' => 'games#watch'
  get '/all' => 'games#show_all'
end
