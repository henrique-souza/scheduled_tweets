# frozen_string_literal: true

# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual
class User < ApplicationRecord
  has_secure_password

  PASSWORD_REGEX = /\A
                    (?=.{8,})
                    (?=.*\d)
                    (?=.*[a-z])F
                    (?=.*[A-Z])
                    (?=.*[[:^alnum:]])
                    /x

  validates :email,
            presence: true,
            format: { with: /\A[\w.+-]+@\w+\.\w+\z/, on: :create },
            uniqueness: true

  validates :password,
            length: { in: 8..20 },
            format: { with: PASSWORD_REGEX },
            allow_blank: false
end
