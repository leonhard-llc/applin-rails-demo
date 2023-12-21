require "applin"

class AccountController < ApplicationController
  protect_from_forgery with: :exception, if: -> { !request.format.applin? }

  def agree_param
    params[:agree] == true
  end

  def username_param
    value = self.params[:username].to_s.strip.downcase
    if /^[a-z0-9]+$/.match?(value)
      value
    end
  end

  def new_account
    # These values are available to templates.
    @agree = self.agree_param
    @username_bad = self.params[:username] && self.username_param.nil?
  end

  def create_account
    if !self.agree_param
      return render plain: "You must agree to the terms",
                    status: :unprocessable_entity
    end
    username = self.username_param
    if username.nil?
      return render plain: "Please enter letters and numbers",
                    status: :unprocessable_entity
    end
    # ...
    head :ok
  end
end
