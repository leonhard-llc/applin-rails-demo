require "applin"

class AccountController < ApplicationController
  protect_from_forgery with: :exception, if: -> { !request.format.applin? }

  def agree_error
    if params[:agree] != true
      "You must agree to the terms"
    end
  end

  def username_param
    value = self.params[:username].to_s.strip.downcase
    if /^[a-z0-9]+$/.match?(value)
      value
    end
  end

  def username_error
    if self.username_param.nil?
      "Please enter letters and numbers"
    end
  end

  def new_account
    # Set values to be available in templates.
    if request.request_method == "GET"
      @agree_error = nil
      @username_error = nil
    else
      @agree_error = self.agree_error
      @username_error = self.username_error
    end
  end

  def create_account
    if !self.agree_error.nil?
      return render plain: self.agree_error, status: :unprocessable_entity
    end
    if !self.username_error.nil?
      return render plain: self.username_error, status: :unprocessable_entity
    end
    # ...
    head :ok
  end
end
