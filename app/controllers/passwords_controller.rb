# frozen_string_literal: true

# Controller to password methods
class PasswordsController < ApplicationController
  before_action :require_user_logged_in!

  def edit; end

  def update
    if Current.user.update(password_params)
      redirect_to root_path, notice: 'Password updated!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  # aplicando mais um teste
  #
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end