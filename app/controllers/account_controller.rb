class AccountController < ApplicationController
  include ::Applin::Rails
  skip_forgery_protection

  def new_account_page
    send_page nav_page(title: "New Account") {
      scroll {
        form(widgets: [
          textfield(label: "Username", var_name: "username"),
          nav_button(text: "Terms", actions: [push("/terms")]),
          nav_button(text: "Privacy", actions: [push("/privacy")]),
          checkbox(text: "I agree", var_name: "agree"),
          form_button(
            text: "Create Account",
            actions: [rpc("/create_account"), replace_all("/")],
          ),
          text("Note: There was a bug where text field values were not sent to the server.  This is fixed in ApplinIos v0.18.0 and Applin Tester v1.2.")
        ])
      }
    }
  end

  def create_account
    if !params[:agree]
      return render plain: "You must agree to the terms",
                    status: :unprocessable_entity
    end
    username = params[:username].to_s.downcase.strip
    if !/^[a-z0-9]+/.match?(username)
      return render plain: "Please enter letters and numbers",
                    status: :unprocessable_entity
    end
    # ...
    head :ok
  end
end

