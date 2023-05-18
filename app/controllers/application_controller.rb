# frozen_string_literal: true

# app controller
class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    # aqui tinha um 'if session...' que estava condicionando o código abaixo
    # return faz o mesmo papel do if anterior, mas com mais clareza.
    # Se a condição do unless for true, nem vai passar do return.
    return unless session[:user_id]

    Current.user = User.find_by(id: session[:user_id])
  end
end
