# frozen_string_literal: true

# Main controller
class MainController < ApplicationController
  def index
    flash[:notice] = 'Logged in successfully'

    flash[:alert] = 'Invalid e-mail or password'
  end
end
