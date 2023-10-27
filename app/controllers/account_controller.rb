require "applin"

class AccountController < ApplicationController
  protect_from_forgery with: :exception, if: -> { !request.format.applin? }

  def create_account
    if !params[:agree]
      return render plain: "You must agree to the terms",
                    status: :unprocessable_entity
    end
    username = params[:username].to_s.downcase.strip
    if !/^[a-z0-9]+$/.match?(username)
      return render plain: "Please enter letters and numbers",
                    status: :unprocessable_entity
    end
    # ...
    head :ok
  end
end
