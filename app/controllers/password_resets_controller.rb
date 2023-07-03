# frozen_string_literal: true

# Forgot password controller
class PasswordResetsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:email])
    # Send e-mail

    return unless @user.present?

    redirect_to root_path, notice: 'If an account with that e-mail was found,
      we have sent a link to reset your password'
  end
end
