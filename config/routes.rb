# frozen_string_literal: true

Rails.application.routes.draw do
  # GET /about
  # get 'about', to: 'about#index'

  # modify the path /about to /about-us
  # get 'about-us', to: 'about#index', as: :about

  # get '/', to: 'main#index'

  get 'about', to: 'about#index'

  get 'profile', to: 'profile#show'

  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'

  root to: 'main#index'
end
