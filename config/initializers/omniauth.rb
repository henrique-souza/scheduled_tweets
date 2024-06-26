# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  #  provider :developer if Rails.env.development?
  provider :twitter, Rails.application.credentials.dig(:twitter, :api_key),
           Rails.application.credentials.dig(:twitter, :api_secret)
end
