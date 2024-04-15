# frozen_string_literal: true

# configurations for callback route
class OmniauthCallbacksController < ApplicationController
  def twitter
    render plain: 'Success!'
  end
end
