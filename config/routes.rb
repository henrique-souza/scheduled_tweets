# frozen_string_literal: true

Rails.application.routes.draw do
  # GET /about
  get 'about', to: 'about#index'

  # get '/', to: 'main#index'

  root to: 'main#index'
end
