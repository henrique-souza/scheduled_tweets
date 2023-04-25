# frozen_string_literal: true

# Registrate the new users
class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end
end
