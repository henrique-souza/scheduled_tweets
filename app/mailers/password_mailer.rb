# frozen_string_literal: true

# Password Mailer
class PasswordMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
  def reset
    @token = params[:user].signed_id(purpose: 'password_reset', expires_in: 15.minutes)

    @greeting = "Hi, #{params[:user].email}!"

    @other_things = "Someone requested a reset of your password.\n\n\
    If this was you, click the link to reset your password.\n\n\
    The link will expire automatically in 15 minutes."

    mail to: params[:user].email
  end
end
