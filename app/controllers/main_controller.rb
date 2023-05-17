# frozen_string_literal: true

# Main controller
class MainController < ApplicationController
  def index
    # aqui tinha um 'if session...' que estava condicionando o código abaixo
    # return faz o mesmo papel do if anterior, mas com mais clareza.
    # Se a condição do unless for true, nem vai passar do return.
    return unless session[:user_id]

    @user = User.find_by(id: session[:user_id])
  end
  # Exemplo de uso do flash
  #   flash.now[:notice] = 'Logged in successfully'

  #   flash.now[:alert] = 'Invalid e-mail or password'
  # end
end
