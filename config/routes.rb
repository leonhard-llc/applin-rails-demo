Rails.application.routes.draw do
  # https://guides.rubyonrails.org/routing.html
  get "/healthz", to: proc { [200, {}, ["success"]] }

  root "home#index" # Requests for "/" go to HomeController.index.
  get "/button_pressed_page", to: "home#button_pressed_page"
  post "/ok", to: "home#ok"
  get "/user_error", to: "home#user_error"
  post "/user_error", to: "home#user_error"
  get "/server_error", to: "home#server_error"

  get "/nav_page_page", to: "pages#nav_page_page"
  get "/plain_page_page", to: "pages#plain_page_page"

  get "/back_button_default_page", to: "widgets#back_button_default_page"
  get "/back_button_disabled_page", to: "widgets#back_button_disabled_page"
  get "/back_button_missing_page", to: "widgets#back_button_missing_page"
  get "/back_button_rpc_ok_page", to: "widgets#back_button_rpc_ok_page"
  get "/back_button_rpc_error_page", to: "widgets#back_button_rpc_error_page"
  get "/back_button_page", to: "widgets#back_button_page"
  get "/button_page", to: "widgets#button_page"
  get "/checkbox_page", to: "widgets#checkbox_page"
  post "/checkbox_page", to: "widgets#checkbox_page"
  get "/error_text_page", to: "widgets#error_text_page"
  get "/form_button_page", to: "widgets#form_button_page"
  get "/form_section_page", to: "widgets#form_section_page"
  get "/grouped_row_table_page", to: "widgets#grouped_row_table_page"
  get "/image_page", to: "widgets#image_page"
  get "/nav_button_page", to: "widgets#nav_button_page"
  get "/textfield_page", to: "widgets#textfield_page"
  post "/textfield_page", to: "widgets#textfield_page"
  get "/text_page", to: "widgets#text_page"

  get "/inert_page", to: "update_modes#inert_page"
  get "/polled_page", to: "update_modes#polled_page"

  get "/new_account", to: "account#new_account"
  post "/new_account", to: "account#new_account"
  post "/create_account", to: "account#create_account"

  # TODO: Demo error handling.
end
