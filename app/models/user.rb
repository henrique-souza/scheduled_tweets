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
            format: { with: /\A[\w.+-]+@\w+\.\w+\z/, on: :create },
            uniqueness: true

  # pelo visto dá pra deixar uma senha de tamanho infinito
  validates :password,
            length: { in: 8..Float::INFINITY }
end
