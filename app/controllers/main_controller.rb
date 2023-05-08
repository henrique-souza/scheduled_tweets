# frozen_string_literal: true

# Main controller
class MainController < ApplicationController
  def index
    return unless session[:user_id]

    @user = User.find_by(id: session[:user_id])
  end
  # Exemplo de uso do flash
  #   flash.now[:notice] = 'Logged in successfully'

  #   flash.now[:alert] = 'Invalid e-mail or password'
  # end
end
