# frozen_string_literal: true

# Session controller
class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email][:password])

    if user.present?
      session[:user_id] = user.id

      redirect_to root_path, notice: 'Logged in successfully'
    else
      flash[:alert] = 'Invalid e-mail or password'

      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to root_path, notice: 'Logged out'
  end
end
