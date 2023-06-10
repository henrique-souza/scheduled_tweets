# frozen_string_literal: true

# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual
class User < ApplicationRecord
  has_secure_password

  validates :email,
            presence: true,
            format: { with: URI::MailTo::EMAIL_REGEXP, on: :create },
            uniqueness: true

  validates :password,
            presence: true,
            length: { in: 8..Float::INFINITY }
end
