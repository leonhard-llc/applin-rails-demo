require "applin"

class HomeController < ApplicationController
  protect_from_forgery with: :exception, if: -> { !request.format.applin? }

  def ok
    head :ok
  end

  def user_error
    render plain: "example user error", status: :unprocessable_entity
  end

  def server_error
    throw "example server error"
  end
end
