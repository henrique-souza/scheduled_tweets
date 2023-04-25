# frozen_string_literal: true

Rails.application.routes.draw do
  # GET /about
  # get 'about', to: 'about#index'

  # modify the path /about to /about-us
  get 'about-us', to: 'about#index', as: :about

  # get '/', to: 'main#index'

  get 'sign_up', to: 'registrations#new'

  root to: 'main#index'
end
